import numpy as np, csv, re, matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
from scipy.signal import medfilt
from lib import *
plt.rcParams.update({'font.size':7,'axes.linewidth':0.6,'lines.linewidth':1.0,'lines.markersize':3.2,'axes.grid':True,'grid.linewidth':0.3,'grid.alpha':0.5,'legend.fontsize':6,'legend.frameon':False,'pdf.fonttype':42,'font.family':'serif'})
import os
OUT=os.path.join(os.path.dirname(os.path.abspath(__file__)),"../paper/fig/")   # run from a folder containing results_sweep/ and results_deep/ (extract results/sweep/results_sweep.tgz first)
W=3.5
C={'cordic':'#d62728','cordic3':'#ff7f0e','lut':'#1f77b4','poly':'#2ca02c'}
# ---- Fig extraction accuracy (C model, 4.0M inputs) + board points
def rd(fn):
    R=[r for r in csv.reader(open(fn)) if r and not r[0].startswith('#')][1:]
    return {m:[(float(r[1]),float(r[5]),float(r[8])) for r in R if r[0]==m and r[2]!='46341'] for m in ('cordic','lut','poly')}
g0=rd('ex_g0.csv'); g3=rd('ex_g3.csv')
fig,ax=plt.subplots(1,2,figsize=(W,2.1))
for key,lab,col,ls,src in [('cordic','CORDIC (guard 0)',C['cordic'],'-',g0),('cordic','CORDIC (guard 3)*',C['cordic3'],'--',g3),('lut','LUT',C['lut'],'-',g0),('poly','Polynomial',C['poly'],'-',g0)]:
    x=[1.4*a[0] for a in src[key]]
    ax[0].loglog(x,[a[1] for a in src[key]],ls,color=col,label=lab,marker='o' if ls=='-' else 's',mfc='none')
    ax[1].loglog(x,[a[2] for a in src[key]],ls,color=col,marker='o' if ls=='-' else 's',mfc='none')
ax[0].set_xlabel('input magnitude (LSB)'); ax[0].set_ylabel('magnitude error, rms (LSB)')
ax[1].set_xlabel('input magnitude (LSB)'); ax[1].set_ylabel('angle error, rms (deg)')
h,l=ax[0].get_legend_handles_labels(); fig.legend(h,l,loc='upper center',ncol=4,fontsize=5.5,columnspacing=0.8,handlelength=1.6)
fig.tight_layout(pad=0.4,rect=(0,0,1,0.9)); fig.savefig(OUT+'extract_err.pdf'); plt.close(fig)
# ---- Fig steady-state error vs noise (S4)
fig,ax=plt.subplots(1,2,figsize=(W,2.35),sharey=True)
sg=[100,300,1000,3000,8000]
for a,amp in zip(ax,(1024,256)):
    T=amp/2
    for k,mk in zip((4,6,8,10,12),'osv^D'):
        y=[]
        for s in sg:
            h,d=load(f"results_sweep/S4/S4_a{amp}_fix{k}_s{s}.txt"); mag=np.hypot(d['mI8'][-128:],d['mQ8'][-128:])/256.
            y.append(100*mag.std()/T)
        a.loglog(sg,y,marker=mk,mfc='none',color=plt.cm.Greys(0.3+0.1*k/2),lw=0.7,label=f'fixed k={k}')
    ya=[];ks=[]
    for s in sg:
        h,d=load(f"results_sweep/S4/S4_a{amp}_adapt_s{s}.txt"); mag=np.hypot(d['mI8'][-128:],d['mQ8'][-128:])/256.
        ya.append(100*mag.std()/T); ks.append(int(round(d['k'][-128:].mean())))
    a.loglog(sg,ya,'-',color='#d62728',marker='*',markersize=6,lw=1.4,label='adaptive')
    for s,y,k in zip(sg,ya,ks): a.annotate(f'k={k}',(s,y),textcoords='offset points',xytext=(0,5),ha='center',fontsize=5.5,color='#d62728')
    a.set_xlabel(r'noise $\sigma$ (LSB, input)'); a.set_title(f'$|I{{+}}jQ|={int(T)}$ LSB',fontsize=6.5)
ax[0].set_ylabel('relative RMS error of $|I{+}jQ|$ (%)')
h,l=ax[0].get_legend_handles_labels(); fig.legend(h,l,loc='lower center',ncol=4,fontsize=5.5,columnspacing=0.8,handlelength=1.6)
fig.tight_layout(pad=0.4,rect=(0,0.17,1,1)); fig.savefig(OUT+'noise_sweep.pdf'); plt.close(fig)
# ---- Fig step response S5 amp down, time series
OUT_MS=0.64
def stepinfo(h):
    c=re.search(r'out_count_at_log_start=(\d+) out_count_after_step_write=(\d+)',h[1]); return int(c.group(1)),int(c.group(2))
fig,ax=plt.subplots(2,1,figsize=(W,3.1),sharex=True,gridspec_kw={'height_ratios':[2.2,1]})
cols={'fix4':'#1f77b4','fix8':'#2ca02c','fix12':'#9467bd','adapt':'#d62728'}
for tag in ['fix12','fix8','fix4','adapt']:
    h,d=load(f"results_sweep/S5/S5_ampdown_{tag}.txt"); n=d['n']; mag=np.hypot(d['mI8'],d['mQ8'])/256.
    yin=medfilt(np.hypot(d['yI'],d['yQ']),5); i0=np.where(yin<(512+64)/2)[0][0]
    t=(n-n[i0])*OUT_MS; keep=t>=0; t=np.maximum(t[keep],2.0); mag=mag[keep]; kk=d['k'][keep]
    ax[0].plot(t,mag,color=cols[tag],label={'adapt':'adaptive'}.get(tag,'fixed k='+tag[3:]),lw=1.2 if tag=='adapt' else 0.8)
    if tag=='adapt': ax[1].step(t,kk,color=cols[tag],where='post')
ax[0].set_xscale('log'); ax[0].set_xlim(1.5,9000); ax[0].set_ylabel(r'$|I{+}jQ|$ estimate (LSB)'); h,l=ax[0].get_legend_handles_labels(); fig.legend(h,l,loc='upper center',ncol=4,fontsize=5.5,columnspacing=0.8,handlelength=1.6)
ax[0].axhline(64,color='k',lw=0.4,ls=':'); ax[0].axhline(512,color='k',lw=0.4,ls=':')
ax[1].set_ylabel('adaptive $k$'); ax[1].set_xlabel('time after amplitude step (ms, nominal 200 kS/s)')
fig.tight_layout(pad=0.4,rect=(0,0,1,0.94)); fig.savefig(OUT+'step_amp.pdf'); plt.close(fig)
# ---- Fig settling time vs k
fig,ax=plt.subplots(figsize=(W,1.8))
ks=np.arange(0,13); ax.semilogy(ks,np.log(10)*2.0**ks*OUT_MS,'k-',lw=0.8,label=r'theory $\ln(10)\,2^k$ outputs')
meas={4:20.5,8:368.6,12:6021.1}
ax.semilogy(list(meas),list(meas.values()),'o',color='#1f77b4',label='board, fixed $k$ (amp. step)')
ax.set_xlabel('averager shift $k$'); ax.set_ylabel('90 % settling time (ms)'); ax.legend(loc='upper left')
fig.tight_layout(pad=0.4); fig.savefig(OUT+'settle_k.pdf'); plt.close(fig)
print("figs done")
