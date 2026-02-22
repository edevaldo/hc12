
# Forces simulation and compilation of target F74F283_tb:
$> make F74F283_tb -B

# Forces simulation and compilation of target F74F283_tb
# then launches gtkwave to show resulting waveforms:
$> make F74F283_tb WAVE=1 -B

# Simulates using min timmings:
$> make F74F283_tb TFLAGS=min WAVE=1 -B

# Enable setup and hold time checks
iverilog -gspecify

References:
===========
https://eclipse.umbc.edu/robucci/cmpeRSD/Lectures/Lecture02__Events_Timing_and_Testbenches/
https://eclipse.umbc.edu/robucci/cmpeRSD/
https://www.chipverify.com/verilog/verilog-timing-checks
google: verilog specify delays