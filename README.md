# vfox-chaosblade plugin

ChaosBlade [vfox](https://github.com/version-fox) plugin. Use the vfox to manage multiple [ChaosBlade](https://github.com/chaosblade-io/chaosblade) versions on Linux.

ChaosBlade is an Alibaba open source chaos engineering toolkit that follows the principles of chaos engineering and chaos experimental models to help enterprises improve the fault tolerance of distributed systems and ensure business continuity during the process of enterprises going to cloud or moving to cloud native systems.

## Requirements

- Linux (currently only Linux is supported)
- curl or wget (for downloading releases)
- tar (for extracting archives)

## Usage

```shell
# install plugin
vfox add --source https://github.com/vibe-ideas/vfox-chaosblade/archive/refs/heads/main.zip chaosblade

# search available chaosblade versions
vfox search chaosblade

# install a specific chaosblade version
vfox install chaosblade@1.7.4

# use a specific version
vfox use chaosblade@1.7.4

# verify installation
chaosblade version
```

## Notice

1. Make sure `tar` and `curl` (or `wget`) are available in your system PATH.

2. ChaosBlade binaries will be installed to the vfox managed directory and automatically added to your PATH when activated.

3. The plugin sets the `CHAOSBLADE_HOME` environment variable to point to the installation directory.

4. You can use `.chaosblade-version` files in your projects to specify the ChaosBlade version for that project.

## Known Issues

- Currently only supports Linux systems (Windows and macOS support not implemented yet)
- Requires x86_64 or amd64 architecture

## Acknowledgements

Thanks for these awesome resources that were used during the development of the **vfox-chaosblade**:

- [ChaosBlade](https://github.com/chaosblade-io/chaosblade) - An Easy to Use and Powerful Chaos Engineering Toolkit
- [version-fox](https://github.com/version-fox/vfox) - A cross-platform and extendable version manager
