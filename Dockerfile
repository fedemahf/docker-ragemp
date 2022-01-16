FROM debian:bullseye-slim

ADD entrypoint.sh /opt/ragemp-srv/entrypoint.sh

RUN \
    apt update -y && \
    apt install -y procps wget && \
    wget -q -O /tmp/linux_x64.tar.gz https://cdn.rage.mp/updater/prerelease/server-files/linux_x64.tar.gz && \
    tar -xzf /tmp/linux_x64.tar.gz -C /opt && \
    rm /tmp/linux_x64.tar.gz && \
    chmod +x /opt/ragemp-srv/entrypoint.sh

ENTRYPOINT ["bash", "/opt/ragemp-srv/entrypoint.sh"]
