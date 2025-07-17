--- Returns some environment variables that need to be set.
--- @param ctx table
--- @field ctx.version string The version of the tool currently in use
--- @field ctx.rootPath string The root path of the tool currently in use
--- @return table Environment variables to be set
function PLUGIN:EnvKeys(ctx)
    return {
        {
            key = "CHAOSBLADE_HOME",
            value = ctx.rootPath
        },
        {
            key = "PATH",
            value = ctx.rootPath .. "/bin"
        }
    }
end
