FROM openjdk:8-jre-alpine3.8

# Install alpine OpenJFX
RUN apk --no-cache add ca-certificates wget && \
    wget --quiet --output-document=/etc/apk/keys/sgerrand.rsa.pub \ 
                        https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub && \
    wget https://github.com/sgerrand/alpine-pkg-java-openjfx/releases/download/8.151.12-r0/java-openjfx-8.151.12-r0.apk && \
    apk add --no-cache java-openjfx-8.151.12-r0.apk 
