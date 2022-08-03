FROM nginx:latest
RUN printf "Cool HTML file" > /usr/share/nginx/html/index.html