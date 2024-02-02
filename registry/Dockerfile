FROM registry:2

ENV REGISTRY_HTTP_ADDR=0.0.0.0:5000
ENV REGISTRY_AUTH=htpasswd
ENV REGISTRY_AUTH_HTPASSWD_REALM=Registry

# username:user, password:password
ENV REGISTRY_AUTH_HTPASSWD_PATH=/auth/registry.password 

ENV REGISTRY_STORAGE_FILESYSTEM_ROOTDIRECTORY=/data

EXPOSE 5000

RUN mkdir -p /auth

COPY ./auth/registry.password /auth/registry.password

WORKDIR /


