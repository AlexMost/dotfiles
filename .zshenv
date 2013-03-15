# Specify 256 color support if xterm
if [[ -n "$DISPLAY" && "$TERM" == "xterm" ]]
then
  export TERM=xterm-256color
fi
