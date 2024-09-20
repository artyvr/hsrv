#!/usr/bin/env bash

backup_path="/home/data/backup"
srv_backup_dir="sites"
srv_data_dir="/opt/hsrv"
exclude_tag=".socket"
keep=3

tar czf ${backup_path}/${srv_data_dir}/hsrv-`date +%d%m%Y`.tar.gz --exclude-tag-all=${exclude_tag} ${sites_dir}
sleep 5

find ${backup_path}/${srv_backup_dir} -type f -mtime +${keep} -delete

./telegram_bot_notify.sh "Backup создан (hsrv-`date +%d%m%Y`.tar.gz)"

exit 0