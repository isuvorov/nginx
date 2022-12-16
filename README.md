# Nginx setup for local debugging
 
## Install

1. `brew install nginx` - устанавливаме nginx
2. `git clone https://github.com/isuvorov/nginx ~/projects/nginx` - клонируем конфиги
3. `echo "include $HOME/projects/nginx/nginx.mac.conf;" > /opt/homebrew/etc/nginx/nginx.conf` - добавляем в конфиг путь к нашим конфигам
4. `sudo cp $HOME/projects/nginx/*.plist /Library/LaunchDaemons` - копируем конфиги для автозапуска
5. `sudo ln -s $HOME/projects/nginx /etc/nginx` - чтобы конфиги одинаково работали на маке и в линкусе (докере)
6. `sudo launchctl load -w /Library/LaunchDaemons/org.nginx.nginx.plist` - запускаем nginx
7. проверяем что на 80 порту работает nginx `curl 127.0.0.1` - должно быть что-то вроде `Welcome to nginx!`

## Restart

```bash
sudo nginx -s stop && sudo nginx
```

## Other

```bash
sudo nginx
sudo nginx -s start
sudo nginx -s stop
```

https://gist.github.com/cmbankester/a3517bd398475a9e3a48

## Если нет папки `/usr/local/etc/nginx`

1. `sudo mkdir -p /usr/local/etc/nginx` - создаем папку для конфигов
2. `sudo chown -R $USER /usr/local/etc/nginx` - меняем владельца папки на текущего пользователя

## Если мак не позволяет занять 80 порт
[How to start nginx on port 80 at Mac OSX boot up / log in](https://derickbailey.com/2014/12/27/how-to-start-nginx-on-port-80-at-mac-osx-boot-up-log-in/)

## Invalid Host header when running Create React App on localhost subdomain

add DANGEROUSLY_DISABLE_HOST_CHECK=true to CRA

https://stackoverflow.com/questions/44064460/invalid-host-header-when-running-create-react-app-on-localhost-subdomain
