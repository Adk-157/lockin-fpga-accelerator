// Extraction-method accuracy vs float64 over a large input set. Same sources as the board build.
#include <cstdio>
#include <cstdint>
#include <cmath>
#include <vector>
#include <algorithm>
#include "cordic_hls.h"
#include "lut_hls.h"
#include "poly_hls.h"
static uint64_t s=88172645463325252ULL; static inline uint64_t rn(){ s^=s<<13; s^=s>>7; s^=s<<17; return s; }
static double u01(){ return (rn()>>11)*(1.0/9007199254740992.0); }
struct Acc { double se=0, sa=0; double mm=0, ma=0; double bm=0; long n=0; };
int main(int argc,char**argv)
{
    // input set: 3M log-uniform magnitude, uniform angle + 1M uniform full range + axes/corner cases
    std::vector<std::pair<int,int>> in;
    for (int i=0;i<3000000;i++){ double m=std::pow(2.0, 15.0*u01()); double a=(u01()*2-1)*M_PI;
        long x=lround(m*cos(a)), y=lround(m*sin(a)); x=std::max(-32768L,std::min(32767L,x)); y=std::max(-32768L,std::min(32767L,y)); in.push_back({(int)x,(int)y}); }
    for (int i=0;i<1000000;i++){ in.push_back({(int)(int16_t)(rn()>>20),(int)(int16_t)(rn()>>30)}); }
    int ex[]={0,1,-1,2,-2,255,256,-256,4095,4096,-4096,32767,-32768,-32767,16384,-16384};
    for(int a:ex) for(int b:ex) in.push_back({a,b});
    const int NB=16; // magnitude bins: octaves 2^0..2^15
    Acc ac[3][NB+1]; 
    for (auto&p:in){
        int x=p.first,y=p.second; double m=std::hypot((double)x,(double)y); if(m<1) continue;
        int b=std::min(NB-1,(int)std::floor(std::log2(m)));
        double ra=std::atan2((double)y,(double)x)*180.0/M_PI;
        ap_int<16> X=x,Y=y;
        ap_uint<16> cm,lm,pm; ap_int<16> ca,la; ap_int<17> pa;
        cordic_vectoring(X,Y,cm,ca); lut_vectoring(X,Y,lm,la); poly_vectoring(X,Y,pm,pa);
        double M[3]={(double)cm.to_uint(),(double)lm.to_uint(),(double)pm.to_uint()};
        double A[3]={ca.to_int()/64.0,la.to_int()/64.0,pa.to_int()/256.0};
        for(int k=0;k<3;k++){ double em=M[k]-m; double ea=std::fmod(A[k]-ra+540.0,360.0)-180.0;
            for(int bb : {b,NB}){ Acc&q=ac[k][bb]; q.se+=em*em; q.sa+=ea*ea; q.mm=std::max(q.mm,std::fabs(em)); q.ma=std::max(q.ma,std::fabs(ea)); q.bm+=em; q.n++; } }
    }
    const char*nm[3]={"cordic","lut","poly"};
    printf("# guard=%d n=%zu\n",CORDIC_GUARD,in.size());
    printf("method,bin_lo,bin_hi,n,mag_bias,mag_rms,mag_max,mag_rel_rms_pct,ang_rms_deg,ang_max_deg\n");
    for(int k=0;k<3;k++) for(int b=0;b<=NB;b++){ Acc&q=ac[k][b]; if(!q.n) continue;
        double lo=(b<NB)?std::pow(2.0,b):1, hi=(b<NB)?std::pow(2.0,b+1):46341;
        double rm=std::sqrt(q.se/q.n); double rel=(b<NB)?100.0*rm/(1.5*lo):0;
        printf("%s,%.0f,%.0f,%ld,%.4f,%.4f,%.3f,%.4f,%.5f,%.4f\n",nm[k],lo,hi,q.n,q.bm/q.n,rm,q.mm,rel,std::sqrt(q.sa/q.n),q.ma); }
}
