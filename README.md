# Developer environment for fn-volga.ru

## How to run
- Install docker and docker-compose (http://docker.com)
- Fix paths for MAIN_DUMP and USERS_DUMP in ./run-server.sh
- Put site files to ./htdocs dir
- Update database user to "root" and empty password (protected/config/db.php)
- Run ```sh run-server.sh``` from console
