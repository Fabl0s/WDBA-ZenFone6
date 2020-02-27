## Getting Props into Vars ##

OEM=`grep_prop ro.product.system.brand`
DEV=`grep_prop ro.product.system.model`
AOS=`grep_prop ro.system.build.version.release`

## Compat Checks ##

ui_print "Checking Device and Build..."
ui_print ""
ui_print "OEM:		"$OEM
ui_print "DEVICE:	"$DEV
ui_print "ANDROID:	"$AOS
ui_print ""

## Running Aborts ##

if [ $OEM != "asus" ]
then abort "OEM Mismatch! Please use the right Module for your device."
fi

if [ $DEV != "ASUS_I01WD" ]
then abort "Device Mismatch! Please use the right Module for your device."
fi

if [ $AOS != "10" ]
then abort "Android Mismatch! Please use the right Module for your device."
fi

## Installing Stuff ##

cp_ch $MODPATH/common/ctos.bootanimation.zip $MODPATH/system/media/bootanimation.zip
cp_ch $MODPATH/common/ctos.bootanimation.zip $MODPATH/system/media/bootanimation_in.zip

ui_print "Done!"