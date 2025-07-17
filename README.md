# vfox-chaosblade plugin

<a href="https://github.com/version-fox/vfox"><img alt="vfox logo" height="64" src="https://vfox.lhan.me/vfox.svg"></a>

[![E2E tests](https://github.com/vibe-ideas/vfox-chaosblade/actions/workflows/e2e_test.yaml/badge.svg)](https://github.com/vibe-ideas/vfox-chaosblade/actions/workflows/e2e_test.yaml)

Chaosblade [vfox](https://github.com/version-fox/vfox) plugin. Use vfox to manage multiple [Chaosblade](https://github.com/chaosblade-io/chaosblade) versions on Linux, Darwin MacOS, and Windows.

## Requirements

- Linux/macOS/Windows
- No additional build tools required (uses pre-built binaries)

## Usage

```shell
# Install plugin
vfox add --source https://github.com/vibe-ideas/vfox-chaosblade/archive/refs/heads/main.zip chaosblade

# List available versions
vfox search chaosblade

# Install a specific version
vfox install chaosblade@1.7.4

# Use a specific version
vfox use chaosblade@1.7.4
```

## Notice

1. Chaosblade is a command-line tool for experimental injection provided by Alibaba. Make sure it's in your system PATH after installation.

2. This plugin downloads pre-built binaries from the official Chaosblade releases, so no compilation is required.

3. Ensure you have appropriate permissions to run experimental tools in your environment.

## Supported Platforms

- Linux (x86_64, ARM64)
- macOS (x86_64, ARM64)
- Windows (x86_64)

## Legacy Version Files

This plugin supports the following legacy version files:
- `.chaosblade-version`

## License

Apache 2.0

## Acknowledgements

Thanks for these awesome resources that were used during the development of the **vfox-chaosblade**:

- [Chaosblade](https://github.com/chaosblade-io/chaosblade)
- [vfox](https://github.com/version-fox/vfox)
- [vfox-plugin-template](https://github.com/version-fox/vfox-plugin-template)