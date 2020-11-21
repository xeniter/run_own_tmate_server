# run_own_tmate_server
Run a own tmate server with docker containers
like public server see https://tmate.io

### create keys for your server

/tmate-ssh-server# ./create_keys.sh 
copy keys to ./DOCKER/keys
create folder for your sessions
mkdir ./DOCKER/sessions

save values you need for your .tmate.conf

### launch server
install tmux
execute
./run_tmate_server.sh
this will start 4 docker images for your tmate server

### create user with api key on server
```
got to http://localhost:4000 
it should look like tmate.io, enter your user and klick registration

After that you can get your api key from the database:
psql -U postgres -h 127.0.0.1 -p 5432
SELECT * FROM USERS;
\c tmate_dev
                  id                  |        email         | username |            api_key             | verified | allow_mailing_list |     created_at      | last_seen_at 
------------------------------------update--+----------------------+----------+--------------------------------+----------+--------------------+---------------------+--------------
 44a55500-f043-11ea-95f9-525400770d6d | manuel@linux-home.at | nios     | [YOUR-API-KEY] | f        | f                  | 2020-09-06 13:17:09 | 
 ```

### run tmate on your client as server in background

install at least tmate version 2.4 for named sessions
if your distro hasn't packed this version yet, you can download also static binaries from:
https://github.com/tmate-io/tmate/releases/tag/2.4.0

copy your .tmate.conf you get this values when creating keys for your server

```
copy ./tmate_service_template/tmate.service to /lib/systemd/system/tmate.service
copy ./tmate_service_template/start_tmate.sh to /usr/bin/
chmod +x /usr/bin/start_tmate.sh 
```
replace in /usr/bin/start_tmate.sh [INSERT-API-KEY-HERE] with you api key from your server
```
systemctl enable tmate
systemctl start tmate
systemctl status tmate
```
