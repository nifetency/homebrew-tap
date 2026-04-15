# Nife Homebrew Tap

Official Homebrew tap for [Nife](https://www.nife.io) CLI tools.

## Available Formulae

| Tool | Description | Command |
| :--- | :--- | :--- |
| **nifectl** | Deploys, manages, and scales applications on the Nife platform. | `nifectl` (or `nife`) |
| **nifejs** | CLI tool for Nife.js related functionality. | `nifejs` |

---

## Installation

### 1. Add the Tap

To add this tap to your Homebrew installation, run:

```bash
brew tap nifetency/homebrew-tap
```

### 2. Install Tools

Once the tap is added, you can install the tools individually:

#### nifectl
```bash
brew install nifectl
```

#### nifejs
```bash
brew install nifejs
```

## Quick Start with nifectl

After installation, you can verify it by checking the version:

```bash
nifectl version
```

To get started with Nife, log in using:

```bash
nifectl auth login
```

For more information on `nifectl`, run:

```bash
nifectl help
```

## Maintenance & Updates

To update your installed tools to the latest version, run:

```bash
brew update
brew upgrade nifectl
brew upgrade nifejs
```

## Contributing

This repository contains Homebrew formulae for Nife CLI tools. Automated workflows are in place to update the `nifejs` formula whenever a new release is available.

For manual contributions or bug reports related to the formulae, please open an issue or pull request in this repository.

## Documentation

- [Nife Documentation](https://docs.nife.io/Quick-Start/Nife-CLI-Installation)
- [Nife.io Home](https://www.nife.io)

## License

Most formulae in this tap are licensed under the MIT License. See individual formula files for details.
