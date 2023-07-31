FROM nginx:alpine
RUN apk update
WORKDIR /usr/share/nginx/html
RUN rm *
COPY . /usr/share/nginx/html
EXPOSE 8080
