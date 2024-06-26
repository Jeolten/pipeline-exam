#!/bin/bash

PROJE_DIZINI= "/path/..."

BACKUP_DIZINI= "/path/..."

echo "stop project"
systemctl stop < proje-name >

echo "start backup"
cp -r $PROJE_DIZINI $BACKUP_DIZINI

echo "update code"
cd $PROJE_DIZINI
git pull origin < proje-branch >

echo "update pip "
# pip install -r requirements.txt
# npm install -r requirements.txt

echo "start project"
systemctl start < proje-service.service > (nginx,apache2 .. vb)

echo "done"


