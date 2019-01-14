#!/bin/bash
APP_DIR=/app
APP_UPGRADE_DIR=/app/upgrade
APP_UPGRADE_PACKAGE_DIR=/app/upgrade/package
APP_BIN_MP=music_player
SH_NETWORK=network.sh
APP_VER=1.00

echo "/*-----------------------------------------" >> $APP_UPGRADE_DIR/log.txt
DATE=$(date "+%Y-%m-%d %H:%M:%S") 
echo "upgrade start, version: $APP_VER. date: $DATE" >> $APP_UPGRADE_DIR/log.txt

# upgrade music_player TODO: 备份
if [ -f $APP_DIR/$APP_BIN_MP ]&&[ -f $APP_UPGRADE_PACKAGE_DIR/$APP_BIN_MP ];then
	echo "start upgrade $APP_BIN_MP" >> $APP_UPGRADE_DIR/log.txt
	rm -f $APP_DIR/$APP_BIN_MP
	cp $APP_UPGRADE_PACKAGE_DIR/$APP_BIN_MP $APP_DIR/
	chmod 777 $APP_DIR/$APP_BIN_MP
fi

# upgrade music_player TODO: 备份
if [ -f $APP_DIR/tc_port ];then
	echo "start rm tc_port" >> $APP_UPGRADE_DIR/log.txt
	rm -f $APP_DIR/tc_port
	rm -f $APP_DIR/tc_port.log
fi

sleep 10
DATE=$(date "+%Y-%m-%d %H:%M:%S") 
echo "upgrade end, date: $DATE" >> $APP_UPGRADE_DIR/log.txt
echo "-------------------------------------------*/" >> $APP_UPGRADE_DIR/log.txt
echo "" >> $APP_UPGRADE_DIR/log.txt
#reboot



