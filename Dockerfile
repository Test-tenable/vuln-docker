FROM alpine:3.7

# Replace mirrors with archive, and add community repo
RUN echo "http://dl-archive.alpinelinux.org/alpine/v3.7/main" > /etc/apk/repositories && \
    echo "http://dl-archive.alpinelinux.org/alpine/v3.7/community" >> /etc/apk/repositories

# Update index and install old packages
RUN apk update && apk add --no-cache \
    bash \
    curl \
    openssl \
    wget

CMD ["bash"]
