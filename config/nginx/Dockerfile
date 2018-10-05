FROM nginx:1.15.2
MAINTAINER Sergey Grigorev "xors.nn@gmail.com"

COPY lugati.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
STOPSIGNAL SIGTERM
CMD ["nginx", "-g", "daemon off;"]
