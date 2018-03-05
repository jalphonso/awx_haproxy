FROM haproxy:1.6-alpine
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
RUN mkdir -p /etc/ssl/awx/
ADD certs /etc/ssl/awx/
