# Use the official registry image
FROM registry:2

# Set environment variables
ENV REGISTRY_AUTH htpasswd
ENV REGISTRY_AUTH_HTPASSWD_REALM Registry
ENV REGISTRY_AUTH_HTPASSWD_PATH /auth/registry.password
ENV REGISTRY_STORAGE_FILESYSTEM_ROOTDIRECTORY /data

# Expose port
EXPOSE 5000

# Create necessary volumes
VOLUME /auth
VOLUME /data
