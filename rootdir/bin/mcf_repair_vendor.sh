#!/vendor/bin/sh

LCD_UNIQUE_ID=$(cat /proc/lcd_unique_id)
MCF_FILE_100=/logbuf/${LCD_UNIQUE_ID}_100.mcf
MCF_FILE_500=/logbuf/${LCD_UNIQUE_ID}_500.mcf
TARGET=/mnt/vendor/persist/display/

sleep 1
irisConfig 518 3 7 -1 0
sleep 10
irisConfig 73 1 0
sleep 1
rm $MCF_FILE_100
rm $MCF_FILE_500
