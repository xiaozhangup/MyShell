#!/bin/bash
cur_file="`date +%Y-%m-%d`_Backup.tar.gz" 
echo FileName: ${cur_file}
read -p "Create the new backup? (y/n):" backup

if [ $backup = "y" ]
then
	tar -zcvf ${cur_file} HAPPYLAND-SkyBlock-3.0/
fi
if [ $backup = "n" ]
then
	echo "Canceled"
	echo "If you want to unpack a backup , please type (tar -zxvf *.tar.gz)"
fi
