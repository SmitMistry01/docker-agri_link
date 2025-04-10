FROM nginx:1.27.5

# Copy custom NGINX config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy static files (if needed)
COPY ./public /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]