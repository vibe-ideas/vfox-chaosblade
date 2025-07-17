local util = require("util")

--- Returns some pre-installed information, such as version number, download address, local files, etc.
--- If checksum is provided, vfox will automatically check it for you.
--- @param ctx table
--- @field ctx.version string User-input version
--- @return table Version information
function PLUGIN:PreInstall(ctx)
    local version = ctx.version
    local info, err = util:GetDownloadInfo(version)
    if err then
        error(err)
    end
    return {
        version = version,
        url = info.url,
        sha256 = info.sha256
    }
end
