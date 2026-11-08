<project xmlns="com.autoesl.autopilot.project" top="cordic_vectoring" name="cordic_g3" projectType="C/C++">
    <includePaths/>
    <libraryPaths/>
    <Simulation argv="C:/Users/adith/OneDrive/Desktop/College/FPGA/golden_vectors/cordic_g3_full.csv">
        <SimFlow name="csim" ldflags="" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../files/cordic_hls.cpp" sc="0" tb="false" cflags="-DCORDIC_GUARD=3" csimflags="" blackbox="false"/>
        <file name="../files/cordic_hls.h" sc="0" tb="false" cflags="-DCORDIC_GUARD=3" csimflags="" blackbox="false"/>
        <file name="../files/lockin_golden_params.h" sc="0" tb="false" cflags="-DCORDIC_GUARD=3" csimflags="" blackbox="false"/>
        <file name="../../../files/tb_cordic.cpp" sc="0" tb="1" cflags="-DCORDIC_GUARD=3 -Wno-unknown-pragmas" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

