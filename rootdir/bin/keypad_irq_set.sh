
vol_up_irq=`cat /proc/interrupts |grep volume_up |cut -d ":" -f 1`
echo $vol_up_irq > /sys/module/pm8941_pwrkey/parameters/vol_up_irq
