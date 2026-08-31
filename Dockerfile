FROM dxflrs/garage:v2.3.0

COPY garage.toml.template /etc/garage.toml.template
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
