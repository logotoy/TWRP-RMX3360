#!/system/bin/sh
# This script is needed to set some device props



# Realme GT Master edition
load_RMX3360()
{
  oplus_project=$(getprop ro.boot.prjname)
  DIR="/odm/etc/$oplus_project"

  if [ -d "$DIR" ]; then
    echo "load_oplus_props: ODM already mounted, proceeding to load $oplus_project " > /tmp/recovery.log    
  else  
  # Sleep for 3s to fix mount issues on boot
     sleep 3
     mount /odm
  fi
#    echo "load_oplus_props: $oplus_project , DIR $DIR" > /tmp/recovery.log
resetprop --file $DIR/build.default.prop
#umount /odm

  oplus_project="21676"
  DIR="/odm/etc/$oplus_project"
  
  if [ -d "$DIR" ]; then
    echo "load_oplus_props: ODM already mounted, proceeding to load $oplus_project " > /tmp/recovery.log
  else
   # Sleep for 3s to fix mount issues on boot
     sleep 3
     mount /odm
  fi 
#    echo "load_oplus_props: $oplus_project , DIR $DIR" > /tmp/recovery.log
resetprop --file $DIR/build.default.prop
umount /odm
}

# Realme GT Master edition
load_RMX3363()
{
  oplus_project=$(getprop ro.boot.prjname)
  DIR="/odm/etc/$oplus_project"

  if [ -d "$DIR" ]; then
    echo "load_oplus_props: ODM already mounted, proceeding to load $oplus_project " > /tmp/recovery.log    
  else  
  # Sleep for 3s to fix mount issues on boot
     sleep 3
     mount /odm
  fi
#    echo "load_oplus_props: $oplus_project , DIR $DIR" > /tmp/recovery.log
resetprop --file $DIR/build.default.prop
#umount /odm

  oplus_project="21675"
  DIR="/odm/etc/$oplus_project"
  
  if [ -d "$DIR" ]; then
    echo "load_oplus_props: ODM already mounted, proceeding to load $oplus_project " > /tmp/recovery.log
  else
   # Sleep for 3s to fix mount issues on boot
     sleep 3
     mount /odm
  fi 
#    echo "load_oplus_props: $oplus_project , DIR $DIR" > /tmp/recovery.log
resetprop --file $DIR/build.default.prop
umount /odm
}

project=$(getprop ro.boot.prjname)
echo "Running Custom Script for $(getprop ro.product.device) , prjname $(getprop ro.boot.prjname)" >> /tmp/recovery.log

case $project in

     "21675")
          load_RMX3360
          ;;
          
     "21676")
          load_RMX3363
          ;;
esac

exit 0
