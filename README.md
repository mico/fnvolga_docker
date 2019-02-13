# Developer environment for fn-volga.ru

## How to run
- Install docker and docker-compose (http://docker.com)
- Fix paths for MAIN_DUMP and USERS_DUMP in ./run-server.sh
- Put site files to ./htdocs dir
- Update database settings (in protected/config/db.php) to:
```
            'connectionString' => 'mysql:host=mysql;dbname=fn_volga',
            'emulatePrepare' => true,
            'username' => 'root',
            'password' => '',
```
- Run ```sh run-server.sh``` from console
