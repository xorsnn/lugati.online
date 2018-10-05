FROM xors/lugati-online-base:v0.0.1
ADD VERSION .
MAINTAINER Sergey Grigorev "xors.nn@gmail.com"

RUN mkdir /app
RUN mkdir /app/frontend
WORKDIR /app/

COPY entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh

EXPOSE 3000

ENTRYPOINT ["entrypoint.sh"]
