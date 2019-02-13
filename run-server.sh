echo "CREATE DATABASE IF NOT EXISTS fn_volga;" > dump.sql
echo "CREATE DATABASE IF NOT EXISTS fn_volga_push;" >> dump.sql
# need to execute it every mysql container run
# echo "SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));" >> dump.sql
echo "USE fn_volga;" >> dump.sql
cat ~/fn-volga.sql >> dump.sql
cat ./fs_user.sql >> dump.sql
docker-compose up
