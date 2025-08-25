FROM alpine:3.7

RUN echo "http://dl-archive.alpinelinux.org/alpine/v3.7/main" > /etc/apk/repositories
RUN echo "http://dl-archive.alpinelinux.org/alpine/v3.7/community" >> /etc/apk/repositories
RUN apk update
RUN apk add bash curl

CMD ["bash"]
