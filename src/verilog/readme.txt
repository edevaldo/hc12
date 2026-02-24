
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

TTL Models:
https://github.com/TimRudy/ice-chips-verilog?tab=readme-ov-file
https://github.com/taw/ttl-cpu/tree/master
https://github.com/wdevore/Verilog-7400-TTLs
https://github.com/BBBSnowball/74xx
https://pepijndevos.nl/2019/07/18/vhdl-to-pcb.html
https://github.com/Ravenslofty/74xx-liberty
https://github.com/pepijndevos/74xx-liberty
https://blog.frankdecaire.com/2016/12/23/simulating-ttl-circuits/

Faster division:
----------------
https://en.wikipedia.org/wiki/Division_algorithm
google: radix-4 division of unsigned integers
https://www.youtube.com/watch?v=AAt2N805fiI
google:carry-save form

Opencores:
https://github.com/fabriziotappero/ip-cores
https://github.com/aolofsson/oh
https://github.com/davidjabon/Verilog

FPU:
https://github.com/dawsonjon/fpu


Makefiles:
----------




Tools:
======
https://github.com/YosysHQ/yosys
https://yosyshq.readthedocs.io/projects/yosys/en/latest/index.html
https://icestudio.io/#lk-overview

iCE40 OS Tools:
https://clifford.at/icestorm
https://github.com/YosysHQ/icestorm
https://www.youtube.com/watch?v=SOn0g3k0FlE





Formal:
=======
https://www.youtube.com/watch?v=VJsMLPGg4U4
https://symbiyosys.readthedocs.io/en/latest/
https://symbiyosys.readthedocs.io/en/latest/quickstart.html
https://github.com/YosysHQ/riscv-formal
https://github.com/YosysHQ/sby
https://www.youtube.com/watch?v=tqreXj5GP_4
https://blog.yosyshq.com/p/risc-v-formal-verification-framework-extension-for-synopsys-vc-formal/

https://zipcpu.com/blog/2017/10/19/formal-intro.html
https://zipcpu.com/
https://zipcpu.com/blog/2018/03/10/induction-exercise.html
https://www.youtube.com/watch?v=7DHV_rJKSgo

https://www.youtube.com/watch?v=9e7F1XhjhKw

https://forum.digilent.com/topic/17335-my-own-journey-with-formal-verification/
https://www.youtube.com/watch?v=Xlp-Gwdxouk
https://www.youtube.com/watch?v=H3tsP9tjYdY
https://www.autonomousvision.io/blog/formal-verification-symbiyosys

https://www.reddit.com/r/FPGA/comments/cs4kzu/formal_verification_symbiyosys_limitations/

To Read:
--------
https://arxiv.org/html/2407.10312v1#abstract
https://github.com/cocotb/cocotb
http://claydowling.com/2017/12/16/makefiles-for-test-driven-development.html

https://www.norwegiancreations.com/2018/08/makefiles-part-3-test-lint-deploy/
https://verificationacademy.com/forums/t/run-multiple-testcases-using-makefile/34138
https://www.youtube.com/watch?v=JarMkGWTF8Y
