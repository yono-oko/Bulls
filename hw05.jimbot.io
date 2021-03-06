server {
    listen 80;
    listen [::]:80;

    # TODO: DONE. This should be your server name.
    server_name hw05.jimbot.io;

    location / {
        proxy_pass http://localhost:4790;
    }

    location /socket {
        proxy_pass http://localhost:4790;
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection "upgrade";
    }
}
