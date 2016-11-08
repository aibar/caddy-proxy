## Usage
    
    docker run --restart always -d \
               --name caddy \
               -v $PWD/caddy:/root/.caddy \
               -p 80:80 \
               -p 443:443 \
               -e Host=host-to-proxy.com \
               -e Port=8080 \
               aibar/caddy-proxy