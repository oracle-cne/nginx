FROM container-registry.oracle.com/os/oraclelinux:9-slim
ARG VERSION
ARG STREAM

RUN microdnf update && \
	microdnf module enable nginx:$STREAM && \
	microdnf install nginx-$VERSION nginx-mod-stream-$VERSION && \
	microdnf clean all && \
	rm -rf /var/cache
	

# Define mountable directories.
VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/etc/nginx/conf.d", "/var/log/nginx", "/var/www/html"]

# Define working directory.
WORKDIR /etc/nginx

# Define default command.
CMD ["nginx", "-g", "daemon off;"]

# Expose ports.
EXPOSE 80
EXPOSE 443
