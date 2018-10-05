FROM alpine:latest

LABEL maintainer="Sergey Grigorev (xors.nn@gmail.com)"

ENV ROOT_PASSWORD root

RUN apk update && apk upgrade && apk add openssh rsync \
              && sed -i s/#PermitRootLogin.*/PermitRootLogin\ yes/ /etc/ssh/sshd_config \
              && echo "root:${ROOT_PASSWORD}" | chpasswd \
              && rm -rf /var/cache/apk/* /tmp/*

COPY entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh

EXPOSE 22

ENTRYPOINT ["entrypoint.sh"]
