#! /bin/sh

cd /sickbeard
if [ -f /config/config.ini ]
then
	rm -rf /sickbeard/config.ini
	rm -rf /sickbeard/sickbeard.db
#	rm -rf /sickbeard/autoprocesstv/autoProcessTV.cfg
else
	mv -f /sickbeard/config.ini /config/config.ini
	mv -f /sickbeard/sickbeard.db /config/sickbeard.db
#	mv -f /sickbeard/autoprocesstv/autoProcessTV.cfg /config/autoProcessTV.cfg
fi
ln -sf /config/config.ini /sickbeard/config.ini
ln -sf /config/sickbeard.db /sickbeard/sickbeard.db
#ln -sf /config/autoProcessTV.cfg sickbeard/autoprocesstv/autoProcessTV.cfg

sed -i 's/web_root = \"\"/web_root = \"\/sickbeard\"/g' /config/config.ini

/usr/bin/python SickBeard.py
