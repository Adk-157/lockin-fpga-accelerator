<project xmlns="com.autoesl.autopilot.project" name="chain" top="cic_fir_chain" projectType="C/C++">
    <includePaths/>
    <libraryPaths/>
    <Simulation argv="C:/Users/adith/OneDrive/Desktop/College/FPGA/golden_vectors/chain_R128_stream.csv">
        <SimFlow name="csim" ldflags="" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../../../files/tb_chain.cpp" sc="0" tb="1" cflags="-Wno-unknown-pragmas" csimflags="" blackbox="false"/>
        <file name="../files/chain_hls.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../files/chain_hls.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../files/cic_fir_common.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../files/cic_fir_params.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
        <solution name="solution1" status="active"/>
    </solutions>
</project>

