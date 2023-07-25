#!/vendor/bin/sh
audbg_mode=`getprop vendor.atd.oem-uart`
echo "audio debug mode $audbg_mode" > /dev/kmsg
echo "$audbg_mode" > /proc/driver/audio_debug
