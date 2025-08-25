FROM alpine:3.7

RUN sed -i 's/dl-cdn.alpinelinux.org/dl-archive.alpinelinux.org/g' /etc/apk/repositories && \
    apk add --no-cache bash curl openssl wget

CMD ["bash"]
