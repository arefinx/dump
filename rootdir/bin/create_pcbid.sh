#!/system/bin/sh

echo "PCBID TEST: +++"

rm /data/data/pcbid_status_str_tmp

PROP_STAGE=$(getprop ro.boot.id.stage)
PROP_PROJECT=$(getprop ro.boot.id.prj)

STAGE=
PROJECT=

case $PROP_PROJECT in
	"0" )
		PROJECT='AI2201_Entry'
		echo "PCBID TEST: PROJECT="$PROJECT
		;;
	"1" )
		PROJECT='AI2201_Pro'
		echo "PCBID TEST: PROJECT="$PROJECT
		;;
	"2" )
		PROJECT='AI2201_Ultimate'
		echo "PCBID TEST: PROJECT="$PROJECT
		;;
esac

case $PROP_STAGE in
	"0" )
		STAGE='EVB'
		echo "PCBID TEST: STAGE="$STAGE
		;;
	"1" )
		STAGE='PreSR'
		echo "PCBID TEST: STAGE="$STAGE
		;;
	"2" )
		STAGE='SR1'
		echo "PCBID TEST: STAGE="$STAGE
		;;
	"3" )
		STAGE='SR2'
		echo "PCBID TEST: STAGE="$STAGE
		;;
	"4" )
		STAGE='ER1'
		echo "PCBID TEST: STAGE="$STAGE
		;;
	"5" )
		STAGE='ER2'
		echo "PCBID TEST: STAGE="$STAGE
		;;
    "6" )
        STAGE='PR'
        echo "PCBID TEST: STAGE="$STAGE
        ;;
    "7" )
        STAGE='MP'
        echo "PCBID TEST: STAGE="$STAGE
        ;;
	*)
		STAGE='UNKNOW('$PROP_STAGE')'
		echo "PCBID TEST: STAGE="$STAGE
		;;
esac

echo $PROJECT"_"$STAGE > /data/data/pcbid_status_str_tmp
chmod 00777 /data/data/pcbid_status_str_tmp

echo "PCBID TEST: ---"
