# Dockerfile
FROM alpine:3.7

# Install some outdated packages with known CVEs
RUN apk add --no-cache \
    bash=4.3.48-r1 \
    openssl=1.0.2m-r1 \
    curl=7.61.1-r2 \
    wget=1.19.5-r0

# Add a deliberately weak config
RUN echo 'root:root' | chpasswd

CMD ["/bin/bash"]
