
# Compilation flags for iverilog
TFLAGS = typ # use: min,  typ or max. $> make TFLAGS=min
CFLAGS = # Use to append flags to compilation like "-gspecify" to enable setup/hold checks 
VFLAGS = -g2012 -T$(TFLAGS) $(CFLAGS)
# Plot waves?
WAVE ?= 0
# Directory to store vvp and vcd files, and GTKWAVE scripts
VVPDIR := vvp
VCDDIR := vcd
GTKWAVE_SCRIPTS_DIR := scripts

# Define which directories make will look for .vvp, .vcd and _gtkwave.tcl files 
vpath %.vvp $(VVPDIR)
vpath %.vcd $(VCDDIR)
vpath %_gtkwave.tcl $(GTKWAVE_SCRIPTS_DIR)

.PHONY: all clean
all: $(VVPDIR) $(VCDDIR) hello_tb F74F283_tb F74F283_5inputEncoder_tb F74F283_majority_tb ttl_74F244



.PHONY: hello_tb
hello_tb: $(VVPDIR)/hello_tb.vvp $(VCDDIR)/hello_tb.vcd

$(VVPDIR)/hello_tb.vvp: hello_tb.v hello.v
	iverilog $(VFLAGS) -o $@ $<

$(VCDDIR)/hello_tb.vcd: $(VVPDIR)/hello_tb.vvp
	vvp $<
	$(call run_GTKWave,$@)



.PHONY: F74F283_tb
F74F283_tb: $(VVPDIR)/F74F283_tb.vvp $(VCDDIR)/F74F283_tb.vcd

$(VVPDIR)/F74F283_tb.vvp: F74F283_tb.sv F74F283.sv  
	iverilog $(VFLAGS) -o $@ $<

$(VCDDIR)/F74F283_tb.vcd: F74F283_tb.vvp
	vvp $<
	$(call run_GTKWave,$@)



.PHONY: ttl_74F244_tb
ttl_74F244_tb: $(VVPDIR)/ttl_74F244_tb.vvp $(VCDDIR)/ttl_74F244_tb.vcd

$(VVPDIR)/ttl_74F244_tb.vvp: ttl_74F244_tb.sv F74F283.sv  
	iverilog $(VFLAGS) -o $@ $<

$(VCDDIR)/ttl_74F244_tb.vcd: ttl_74F244_tb.vvp
	vvp $<
	$(call run_GTKWave,$@)



.PHONY: F74F283_5inputEncoder_tb
F74F283_5inputEncoder_tb: $(VVPDIR)/F74F283_5inputEncoder_tb.vvp $(VCDDIR)/F74F283_5inputEncoder_tb.vcd

$(VVPDIR)/F74F283_5inputEncoder_tb.vvp: F74F283_5inputEncoder_tb.sv F74F283.sv 
	iverilog $(VFLAGS) -o $@ $<

$(VCDDIR)/F74F283_5inputEncoder_tb.vcd: $(VVPDIR)/F74F283_5inputEncoder_tb.vvp
	vvp $<
	$(call run_GTKWave,$@)



.PHONY: F74F283_majority_tb
F74F283_majority_tb: $(VVPDIR)/F74F283_majority_tb.vvp $(VCDDIR)/F74F283_majority_tb.vcd

$(VVPDIR)/F74F283_majority_tb.vvp: F74F283_majority_tb.sv F74F283.sv 
	iverilog $(VFLAGS) -o $@ $<

$(VCDDIR)/F74F283_majority_tb.vcd: $(VVPDIR)/F74F283_majority_tb.vvp
	vvp $<
	$(call run_GTKWave,$@)



$(VVPDIR):
	mkdir -p $(VVPDIR)

$(VCDDIR):
	mkdir -p $(VCDDIR)

clean:
	@rm $(VVPDIR)/*.vvp
	@rm $(VCDDIR)/*.vcd

# $(call run_GTKWave,target_name)
define run_GTKWave
	@if [ $(WAVE) -eq 1 ]; then \
		if [ -s $(basename $1).gtkw ]; then \
			gtkwave $1 $(basename $1).gtkw & \
		elif [ -s $(GTKWAVE_SCRIPTS_DIR)/$(basename $(notdir $1))_gtkwave.tcl ]; then \
			gtkwave $1 --script=$(GTKWAVE_SCRIPTS_DIR)/$(basename $(notdir $1))_gtkwave.tcl & \
		else \
			gtkwave $1 & \
		fi \
	fi
endef
