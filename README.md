## Nginx set for local debugging
 
Settings:
1. `brew install nginx`
2. `git clone https://github.com/isuvorov/nginx ~/projects/nginx`
3. `mkdir -p /usr/local/etc/nginx`
4. `echo "include $HOME/projects/nginx/nginx.mac.conf;" > /usr/local/etc/nginx/nginx.conf`
5. `sudo cp /usr/local/opt/nginx/*.plist /Library/LaunchDaemons`
6. `sudo ln -s $HOME/projects/nginx /etc/nginx`
7. `sudo launchctl load -w /Library/LaunchDaemons/homebrew.mxcl.nginx.plist`
8. [How to start nginx on port 80 at Mac OSX boot up / log in](https://derickbailey.com/2014/12/27/how-to-start-nginx-on-port-80-at-mac-osx-boot-up-log-in/)

## Restart

```
sudo nginx -s stop && sudo nginx
```

## Other

```
sudo nginx
sudo nginx -s start
sudo nginx -s stop
```


https://gist.github.com/cmbankester/a3517bd398475a9e3a48

## Invalid Host header when running Create React App on localhost subdomain

add DANGEROUSLY_DISABLE_HOST_CHECK=true to CRA

https://stackoverflow.com/questions/44064460/invalid-host-header-when-running-create-react-app-on-localhost-subdomain
