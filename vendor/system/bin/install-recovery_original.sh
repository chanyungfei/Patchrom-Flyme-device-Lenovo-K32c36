#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:10411308:1fcfc048ff3cea106de2824689c9ab45d3abe31f; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:9514280:20f0fb9b027177a2f91c5e18f29b421ffb8c0113 EMMC:/dev/block/bootdevice/by-name/recovery 1fcfc048ff3cea106de2824689c9ab45d3abe31f 10411308 20f0fb9b027177a2f91c5e18f29b421ffb8c0113:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
