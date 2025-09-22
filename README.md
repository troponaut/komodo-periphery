# Komodo Periphery with 1Password CLI

This repository contains a Docker image that extends the [moghtech/komodo-periphery](https://github.com/moghtech/komodo-periphery) base image by adding the 1Password CLI (`op`) tool.

## Overview

Komodo Periphery is a companion service for the Komodo deployment platform. This extended version includes the 1Password CLI to enable secure secret management and automation workflows within your homelab infrastructure.

## Features

- Based on `ghcr.io/moghtech/komodo-periphery`
- Includes 1Password CLI (`op`) for secret management
- Maintained container labels for proper metadata
- Renovate bot configuration for automated dependency updates

## Usage

### Building the Image

```bash
docker build -t komodo-periphery-1password .
```

### Running the Container

```bash
docker run -d --name komodo-periphery komodo-periphery-1password
```

### Using 1Password CLI

The 1Password CLI is available as `/usr/local/bin/op` within the container. You can use it for:

- Retrieving secrets from 1Password vaults
- Automating credential management
- Integrating with deployment workflows

Example usage:
```bash
# Inside the container
op item get "my-secret" --vault "homelab"
```

## Dependencies

- **Base Image**: `ghcr.io/moghtech/komodo-periphery`
- **1Password CLI**: `1password/op`

## Maintenance

This project uses Renovate bot for automated dependency updates. The configuration extends a local renovate config at `local>renovate/renovate-config`.

## Deployment

Upon pushing to the `main` branch after a merge, a webhook calls a Komodo action that bumps the version on the Komodo Build resources, and then triggers a new build.

## TODO

- [ ] Build a CI pipeline that lints the Dockerfile

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## License

This project follows the same license as the base Komodo Periphery project.

## Support

For issues related to:
- **Base functionality**: See [moghtech/komodo-periphery](https://github.com/moghtech/komodo-periphery)
- **1Password CLI**: See [1Password CLI documentation](https://developer.1password.com/docs/cli/)
- **This extension**: Open an issue in this repository

## Maintainer

- **troponaut** <dev@troponaut.dev>
