#!/vendor/bin/sh

mkdir -p /data/vendor/firmware
rm /data/vendor/firmware/hdcp*

# if 8450
platform=`getprop ro.boot.id.soc`
if [ $platform == "1" ]; then
    ln -sf /vendor/firmware/hdcp2p2.b00 /data/vendor/firmware/hdcp2p2.b00
    ln -sf /vendor/firmware/hdcp2p2.b01 /data/vendor/firmware/hdcp2p2.b01
    ln -sf /vendor/firmware/hdcp2p2.b02 /data/vendor/firmware/hdcp2p2.b02
    ln -sf /vendor/firmware/hdcp2p2.b03 /data/vendor/firmware/hdcp2p2.b03
    ln -sf /vendor/firmware/hdcp2p2.b04 /data/vendor/firmware/hdcp2p2.b04
    ln -sf /vendor/firmware/hdcp2p2.b05 /data/vendor/firmware/hdcp2p2.b05
    ln -sf /vendor/firmware/hdcp2p2.b06 /data/vendor/firmware/hdcp2p2.b06
    ln -sf /vendor/firmware/hdcp2p2.b07 /data/vendor/firmware/hdcp2p2.b07
    ln -sf /vendor/firmware/hdcp2p2.b08 /data/vendor/firmware/hdcp2p2.b08
    ln -sf /vendor/firmware/hdcp2p2.mdt /data/vendor/firmware/hdcp2p2.mdt
    ln -sf /vendor/firmware/hdcp1.b00 /data/vendor/firmware/hdcp1.b00
    ln -sf /vendor/firmware/hdcp1.b01 /data/vendor/firmware/hdcp1.b01
    ln -sf /vendor/firmware/hdcp1.b02 /data/vendor/firmware/hdcp1.b02
    ln -sf /vendor/firmware/hdcp1.b03 /data/vendor/firmware/hdcp1.b03
    ln -sf /vendor/firmware/hdcp1.b04 /data/vendor/firmware/hdcp1.b04
    ln -sf /vendor/firmware/hdcp1.b05 /data/vendor/firmware/hdcp1.b05
    ln -sf /vendor/firmware/hdcp1.b06 /data/vendor/firmware/hdcp1.b06
    ln -sf /vendor/firmware/hdcp1.b07 /data/vendor/firmware/hdcp1.b07
    ln -sf /vendor/firmware/hdcp1.b08 /data/vendor/firmware/hdcp1.b08
    ln -sf /vendor/firmware/hdcp1.mdt /data/vendor/firmware/hdcp1.mdt
else
# if 8475
    ln -sf /vendor/firmware_dallas/hdcp2p2.b00 /data/vendor/firmware/hdcp2p2.b00
    ln -sf /vendor/firmware_dallas/hdcp2p2.b01 /data/vendor/firmware/hdcp2p2.b01
    ln -sf /vendor/firmware_dallas/hdcp2p2.b02 /data/vendor/firmware/hdcp2p2.b02
    ln -sf /vendor/firmware_dallas/hdcp2p2.b03 /data/vendor/firmware/hdcp2p2.b03
    ln -sf /vendor/firmware_dallas/hdcp2p2.b04 /data/vendor/firmware/hdcp2p2.b04
    ln -sf /vendor/firmware_dallas/hdcp2p2.b05 /data/vendor/firmware/hdcp2p2.b05
    ln -sf /vendor/firmware_dallas/hdcp2p2.b06 /data/vendor/firmware/hdcp2p2.b06
    ln -sf /vendor/firmware_dallas/hdcp2p2.b07 /data/vendor/firmware/hdcp2p2.b07
    ln -sf /vendor/firmware_dallas/hdcp2p2.b08 /data/vendor/firmware/hdcp2p2.b08
    ln -sf /vendor/firmware_dallas/hdcp2p2.mdt /data/vendor/firmware/hdcp2p2.mdt
    ln -sf /vendor/firmware_dallas/hdcp1.b00 /data/vendor/firmware/hdcp1.b00
    ln -sf /vendor/firmware_dallas/hdcp1.b01 /data/vendor/firmware/hdcp1.b01
    ln -sf /vendor/firmware_dallas/hdcp1.b02 /data/vendor/firmware/hdcp1.b02
    ln -sf /vendor/firmware_dallas/hdcp1.b03 /data/vendor/firmware/hdcp1.b03
    ln -sf /vendor/firmware_dallas/hdcp1.b04 /data/vendor/firmware/hdcp1.b04
    ln -sf /vendor/firmware_dallas/hdcp1.b05 /data/vendor/firmware/hdcp1.b05
    ln -sf /vendor/firmware_dallas/hdcp1.b06 /data/vendor/firmware/hdcp1.b06
    ln -sf /vendor/firmware_dallas/hdcp1.b07 /data/vendor/firmware/hdcp1.b07
    ln -sf /vendor/firmware_dallas/hdcp1.b08 /data/vendor/firmware/hdcp1.b08
    ln -sf /vendor/firmware_dallas/hdcp1.mdt /data/vendor/firmware/hdcp1.mdt
fi
