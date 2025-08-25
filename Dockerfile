# Dockerfile
FROM alpine:3.7

# Install some outdated packages with known CVEs
# Point to the archive servers for old packages
RUN sed -i 's/dl-cdn.alpinelinux.org/dl-archive.alpinelinux.org/g' /etc/apk/repositories

# Install some old packages without pinning exact versions
RUN apk add --no-cache bash curl openssl wget

# Add a deliberately weak config
RUN echo 'root:root' | chpasswd

CMD ["/bin/bash"]
