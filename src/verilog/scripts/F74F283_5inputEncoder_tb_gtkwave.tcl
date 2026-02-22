
# add waves
gtkwave::/Edit/Insert_Blank
# gtkwave::addCommentTracesFromList [list "--- Inputs: ---"]
set sig_list [list \
  "tb.in" \
  "tb.a" \
  "tb.b" \
]
gtkwave::addSignalsFromList $sig_list

gtkwave::/Edit/Insert_Blank
# gtkwave::addCommentTracesFromList [list "--- Outputs: ---"]
set sig_list [list \
  "tb.out" \
  "tb.s" \
  "tb.co" \
]
gtkwave::addSignalsFromList $sig_list


# Optional: Add a command to fit the waveform to the screen after loading
# gtkwave::mainWindow configure -hst_config 1
gtkwave::setZoomRangeTimes 0 [gtkwave::getMaxTime]
