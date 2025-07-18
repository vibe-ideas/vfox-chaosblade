--- !!! DO NOT EDIT OR RENAME !!!
PLUGIN = {}

--- !!! MUST BE SET !!!
--- Plugin name
PLUGIN.name = "chaosblade"
--- Plugin version
PLUGIN.version = "0.1.0"
--- Plugin homepage
PLUGIN.homepage = "https://github.com/version-fox/vfox-chaosblade"
--- Plugin license, please choose a correct license according to your needs.
PLUGIN.license = "Apache 2.0"
--- Plugin description
PLUGIN.description = "Chaosblade, is an experimental injection tool provided by Alibaba."


--- !!! OPTIONAL !!!
--[[
NOTE:
    Minimum compatible vfox version.
    If the plugin is not compatible with the current vfox version,
    vfox will not load the plugin and prompt the user to upgrade vfox.
 --]]
PLUGIN.minRuntimeVersion = "0.3.0"
--[[
NOTE:
    If configured, vfox will check for updates to the plugin at this address,
    otherwise it will check for updates at the global registry.

    If you want use the global registry to distribute your plugin, you can remove this field.

    If you develop a plugin based on the template, which will automatically generate a manifest file by CI,
    you can set this address to the manifest file address, so that the plugin can be updated automatically.

 --]]
PLUGIN.manifestUrl = "https"
-- Some things that need user to be attention!
PLUGIN.notes = {
    "chaosblade is a command-line tool, please make sure it is in your PATH.",
}

--- List legacy configuration filenames for determining the specified version of the tool.
--- such as ".node-version", ".nvmrc", etc.
PLUGIN.legacyFilenames = {
    ".chaosblade-version",
}
