FROM nginx:alpine
COPY nginx/config /etc/nginx/config
COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf
COPY build/public /public

  # - /root/config/demo/nginx.conf:/etc/nginx/conf.d/default.conf
  # - /root/config/nginx/config:/etc/nginx/config
