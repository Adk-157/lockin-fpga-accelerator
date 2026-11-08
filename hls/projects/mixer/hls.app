<project xmlns="com.autoesl.autopilot.project" top="mixer" name="mixer" projectType="C/C++">
    <includePaths/>
    <libraryPaths/>
    <Simulation argv="C:/Users/adith/OneDrive/Desktop/College/FPGA/golden_vectors/mixer_full.csv">
        <SimFlow name="csim" ldflags="" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../files/mixer_hls.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../files/mixer_hls.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../files/mixer_params.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../../../files/tb_mixer.cpp" sc="0" tb="1" cflags="-Wno-unknown-pragmas" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

