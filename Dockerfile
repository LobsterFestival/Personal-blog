FROM klakegg/hugo:onbuild AS hugo
FROM caddy:latest
COPY  --from=hugo /target/ /srv
COPY  ./Caddyfile /etc/caddy/Caddyfile
