<project xmlns="com.autoesl.autopilot.project" top="poly_vectoring" name="poly" projectType="C/C++">
    <includePaths/>
    <libraryPaths/>
    <Simulation argv="C:/Users/adith/OneDrive/Desktop/College/FPGA/golden_vectors/poly_full.csv">
        <SimFlow name="csim" ldflags="" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../files/lockin_common.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../files/lockin_golden_params.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../files/poly_hls.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../files/poly_hls.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../../../files/tb_poly.cpp" sc="0" tb="1" cflags="-Wno-unknown-pragmas" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

