# TODO: convert to docker-compose to make db run before app instance
# docker stop app
# docker rm app
# docker stop db
# docker rm db
# docker build -t 7.3-custom .
# docker run -e MYSQL_ALLOW_EMPTY_PASSWORD=1 --name db mysql:5 &
# # restore dump
# # docker exec -i db mysql -e 'create database fn_volga'
# # docker exec -i db mysql fn_volga < /Users/mico/Downloads/u0099096_gazned.sql
# docker run -d -p 127.0.0.1:1080:80 --link db:db --name app -v "$PWD/htdocs":/var/www/html 7.3-custom

# mysql shell
# docker exec -it db mysql -p'my-secret-pw' fn_volga

echo "CREATE DATABASE IF NOT EXISTS fn_volga;" > dump.sql
echo "CREATE DATABASE IF NOT EXISTS fn_volga_push;" >> dump.sql
echo "USE fn_volga;" >> dump.sql
cat /Users/mico/Downloads/u0099096_gazned.sql >> dump.sql
docker-compose up
