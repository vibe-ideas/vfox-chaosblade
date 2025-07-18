# vfox-chaosblade plugin

ChaosBlade [vfox](https://github.com/version-fox) plugin. Use the vfox to manage multiple [ChaosBlade](https://github.com/chaosblade-io/chaosblade) versions on Linux.

ChaosBlade is an Alibaba open source chaos engineering toolkit that follows the principles of chaos engineering and chaos experimental models to help enterprises improve the fault tolerance of distributed systems and ensure business continuity during the process of enterprises going to cloud or moving to cloud native systems.

## Requirements

- Linux System (currently only Linux is supported)

## Usage

```shell
# install plugin
vfox add --source https://github.com/vibe-ideas/vfox-chaosblade/archive/refs/heads/main.zip chaosblade

# search available chaosblade versions
vfox search chaosblade

# install a specific chaosblade version
vfox install chaosblade@1.7.4

# use a specific version
vfox use chaosblade@1.7.4 -g

# verify installation
blade version
```

## Notice

1. ChaosBlade binaries will be installed to the vfox managed directory and automatically added to your PATH when activated.

2. The plugin sets the `CHAOSBLADE_HOME` environment variable to point to the installation directory.

## Known Issues

- Currently only supports Linux systems (Windows and macOS support not implemented yet)
- Requires arm64 or amd64 architecture

## Acknowledgements

Thanks for these awesome resources that were used during the development of the **vfox-chaosblade**:

- [ChaosBlade](https://github.com/chaosblade-io/chaosblade) - An Easy to Use and Powerful Chaos Engineering Toolkit
- [version-fox](https://github.com/version-fox/vfox) - A cross-platform and extendable version manager
