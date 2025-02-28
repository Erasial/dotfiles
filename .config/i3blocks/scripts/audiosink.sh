#!/bin/bash

SINK="$(pactl get-default-sink)"

if [[ "$SINK" = "alsa_output.pci-0000_00_1b.0.analog-stereo" ]]; then
	echo "Headphones"
elif [[ "$SINK" = "alsa_output.usb-PreSonus_AudioBox_USB_96_000000000000-00.analog-stereo" ]]; then
        echo "AudioBox"
else
	echo "No audio"
fi
