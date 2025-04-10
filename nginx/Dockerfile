FROM nginx:1.27.5 AS dev
# Your custom configs here

FROM gcr.io/distroless/nginx-debian11
COPY --from=builder /etc/nginx /etc/nginx
COPY --from=builder /usr/share/nginx/html /usr/share/nginx/html
EXPOSE 8080
ENTRYPOINT ["nginx", "-g", "daemon off;"]