
# Android Debug Bridge (adb) and Fastboot (adb-fastboot)

**Android Debug Bridge (adb)** and **Fastboot** tools for connecting to, debugging, and flashing Android devices directly from within a Dev Container.

- Installs [Android Platform Tools](https://developer.android.com/studio/releases/platform-tools)
- Adds `adb` and `fastboot` to PATH automatically
- (Linux) Optionally configures udev rules for USB device access
- Suitable for Android developers who need device access inside containerized environments

## Example Usage

```json
"features": {
    "ghcr.io/Evit15/devcontainer-features/adb-fastboot:1": {}
}
```





---

_Note: This file was auto-generated from the [devcontainer-feature.json](https://github.com/Evit15/devcontainer-features/blob/main/src/adb-fastboot/devcontainer-feature.json).  Add additional notes to a `NOTES.md`._
