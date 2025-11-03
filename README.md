# Evit15 Container Features

This repository contains a collection of [Dev Container Features](https://containers.dev/implementors/features/) created and maintained by Evit15. These features are designed to enhance the development environment within Dev Containers, providing additional tools and functionalities to streamline your workflow.

## Features
- **ADB**: Android Debug Bridge feature for seamless Android device management and debugging within your Dev Container.

## Usage
To use any of the features in this repository, you can include them in your Dev Container configuration file (`devcontainer.json`) as follows:

```json
{
  "features": {
    "ghcr.io/Evit15/devcontainer-features/adb-fastboot:1": {}
  }
}
```
