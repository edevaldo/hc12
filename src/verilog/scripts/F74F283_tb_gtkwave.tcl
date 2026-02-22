
# add waves
set sig_list [list \
  "tb.a" \
  "tb.b" \
  "tb.ci" \
  "tb.s" \
  "tb.co" \
]
gtkwave::addSignalsFromList $sig_list

# Optional: Add a command to fit the waveform to the screen after loading
# gtkwave::mainWindow configure -hst_config 1
gtkwave::setZoomRangeTimes 0 [gtkwave::getMaxTime]
