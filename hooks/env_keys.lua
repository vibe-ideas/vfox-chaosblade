--- Each SDK may have different environment variable configurations.
--- This allows plugins to define custom environment variables (including PATH settings)
--- Note: Be sure to distinguish between environment variable settings for different platforms!
--- @param ctx table Context information
--- @field ctx.path string SDK installation directory
function PLUGIN:EnvKeys(ctx)
    return {
        {
            key = "CHAOSBLADE_HOME",
            value = ctx.path
        },
        {
            key = "PATH",
            value = ctx.path
        }
    }
end
