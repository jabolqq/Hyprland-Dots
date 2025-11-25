#!/bin/bash
# Get the current audio sink
CURRENT_SINK=$(pactl info | grep "Default Sink" | awk '{print $3}')

# Define the sinks
SINK_1="alsa_output.usb-3142_fifine_Microphone-00.analog-stereo"
SINK_2="alsa_output.pci-0000_00_1f.3.analog-stereo"

# Switch to the other sink
if [ "$CURRENT_SINK" == "$SINK_1" ]; then
  pactl set-default-sink $SINK_2
else
  pactl set-default-sink $SINK_1
fi
