######
SKIPMOUNT=false
PROPFILE=false
POSTFSDATA=false
LATESTARTSERVICE=true
REPLACE="
"
unzip -o "$ZIPFILE" 'banner' -d $MODPATH >&2
ui_print " "
ui_print " "
ui_print "*******************************"
ui_print "     ADVANCED BATTERY SAVING   "
ui_print "*******************************"
ui_print "*******************************"
ui_print "           Kutu Moba           "
ui_print "*******************************"
ui_print " "
ui_print " "
sleep 2
ui_print ""
ui_print ""
ui_print "$(awk '{print}' "$MODPATH/banner")"
ui_print ""
sleep 0.5
ui_print "▒▒▒▒ 𝗗𝗲𝘃𝗶𝗰𝗲 𝗜𝗻𝗳𝗼 ▒▒▒▒ "
sleep 2
ui_print "- "
ui_print "   ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒"
ui_print "   ▒ "
ui_print "   ▒▒▒▒ CODE NAME        : $(getprop ro.product.board) "
sleep 0.2
ui_print "   ▒▒▒▒ VERSION GL       : $(getprop ro.opengles.version) "
sleep 0.2
ui_print "   ▒▒▒▒ SELINUX          : $(getenforce) "
sleep 0.2
ui_print "   ▒▒▒▒ KERNEL           : $(uname -r) "
sleep 0.2
ui_print "   ▒▒▒▒ BUILD DATE       : $(getprop ro.system.build.date) "
slepp 0.2
ui_print "   ▒▒▒▒ CHIP             : $(getprop ro.product.system.manufacturer) "
sleep 0.2
ui_print "   ▒▒▒▒ ANDROID VERSION  : $(getprop ro.system.build.version.release) "
sleep 0.2
ui_print "   ▒▒▒▒ ROM              : $(getprop ro.build.flavor) "
sleep 0.2
ui_print "   ▒▒▒▒ ARCHITECTURE     : $(uname -m) "
sleep 0.2
ui_print "   ▒▒▒▒ DESCRIPTION ROM  : $(getprop ro.build.description) "
sleep 0.2
ui_print "   ▒▒▒▒ FINGERPRINT      : $(getprop ro.build.fingerprint) "
sleep 0.2
ui_print "   ▒▒▒▒ SECURITY PATCH   : $(getprop ro.build.version.security_patch) "
sleep 0.2
ui_print "   ▒ "
ui_print "   ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒"
ui_print "- "
sleep 0.2
ui_print "▒▒▒▒ START INSTALLATION ▒▒▒▒ "
sleep 1
ui_print " "
ui_print " "
ui_print " "
ui_print "   Advanced battery saving to save more battery "
ui_print " "
ui_print " "
unzip -o "$ZIPFILE" 'common/*' -d $TMPDIR >&2
unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
cp -af $TMPDIR/code $MODPATH/code
cp -af $TMPDIR/ABS_notifD $MODPATH/ABS_notifD
cp -af $TMPDIR/ABS_notifE $MODPATH/ABS_notifE
cp -af $TMPDIR/top_time $MODPATH/top_time
cp -af $TMPDIR/ABS $MODPATH/ABS
cp -af $TMPDIR/set_GovP $MODPATH/set_GovP
cp -af $TMPDIR/set_GovS $MODPATH/set_GovS
sleep 1
set_perm_recursive $MODPATH 0 0 0755 0644
set_perm $MODPATH/ABS 0 0 0755 0755
set_perm $MODPATH/top_time 0 0 0755 0755
set_perm $MODPATH/ABS_notifD 0 0 0755 0755
set_perm $MODPATH/ABS_notifE 0 0 0755 0755
set_perm $MODPATH/set_GovP 0 0 0755 0755
set_perm $MODPATH/set_GovS 0 0 0755 0755

