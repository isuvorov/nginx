## Nginx set for local debugging
 

Settings:
1. `brew install nginx`
2. `git clone https://github.com/isuvorov/nginx ~/projects/nginx`
3. `echo "include /Users/isuvorov/projects/nginx/nginx.mac.conf;" > /usr/local/etc/nginx/nginx.conf`
4. `sudo cp /usr/local/opt/nginx/*.plist /Library/LaunchDaemons`
5. `ln -s $HOME/projects/nginx /etc/nginx`
6. [How to start nginx on port 80 at Mac OSX boot up / log in](https://derickbailey.com/2014/12/27/how-to-start-nginx-on-port-80-at-mac-osx-boot-up-log-in/)


```
sudo nginx
sudo nginx -s start
sudo nginx -s stop
```

https://gist.github.com/cmbankester/a3517bd398475a9e3a48