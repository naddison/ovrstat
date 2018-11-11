FROM alpine:latest
RUN apk add --no-cache ca-certificates

#https://stackoverflow.com/a/35613430/9665833
RUN mkdir /lib64 && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2

ADD bin/ovrstat /usr/local/bin/ovrstat
ADD /web /web/
CMD ovrstat