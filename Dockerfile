FROM ghcr.io/moghtech/komodo-periphery:1.19.4@sha256:c28041c50ab7466c42160ae214c594705758d95278b999ec038e3bbc2e2948e2

# Install 1Password CLI
COPY --from=1password/op:2@sha256:57d7d6a2bb2b74b2cf8111f6afb2973c74772198f82ea30359a53faae9fff5b1 /usr/local/bin/op /usr/local/bin/op

LABEL org.opencontainers.image.authors="troponaut <dev@troponaut.dev>" \
    org.opencontainers.image.source="https://github.com/troponaut/komodo-periphery" \
    org.opencontainers.image.description="Adds 1Password CLI in moghtech/komodo-periphery image." \
    org.opencontainers.image.licenses="GPL-3.0" \
    org.opencontainers.image.base.name="ghcr.io/moghtech/komodo-periphery" \
    org.opencontainers.image.additions="1Password CLI (op)"
