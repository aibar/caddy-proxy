## Usage
    
    docker run --restart always -d \
               --name caddy \
               -v $PWD/caddy:/root/.caddy \
               -p 80:80 \
               -p 443:443 \
               -e hostname hostname.com \
               -e proxy_host host-to-proxy.com \
               -e proxy_port 8080 \
               aibar/caddy-proxy