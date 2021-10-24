FROM alpine:latest

ADD https://gosspublic.alicdn.com/ossutil/1.7.7/ossutil64 /usr/bin/ossutil
RUN chmod a+x /usr/bin/ossutil

COPY entrypoint.sh /
RUN chmod +x entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
