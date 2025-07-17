local http = require("http")
local json = require("json")
local util = {}

local GITHUB_API_URL = "https://api.github.com/repos/chaosblade-io/chaosblade/releases"

function util:Available()
    local resp, err = http.get({
        url = GITHUB_API_URL
    })
    if err ~= nil or resp.status_code ~= 200 then
        return nil, "Failed to fetch releases from GitHub API."
    end
    local releases = json.decode(resp.body)
    local versions = {}
    for _, release in ipairs(releases) do
        -- Remove 'v' prefix from tag_name to avoid double 'v' prefix
        local clean_version = release.tag_name:gsub("^v", "")
        table.insert(versions, {
            version = clean_version,
            note = release.prerelease and "prerelease" or ""
        })
    end
    return versions
end

function util:GetDownloadInfo(version)
    local os_type = RUNTIME.osType
    if os_type:lower() ~= "linux" then
        print("Unsupported OS type: " .. os_type)
    end

    local arch = RUNTIME.archType
    if arch == "x86_64" then
        arch = "amd64"
    end
    local file_name = string.format("chaosblade-%s-%s-%s.tar.gz", version, os_type, arch)
    local url = string.format("https://github.com/chaosblade-io/chaosblade/releases/download/v%s/%s", version, file_name)

    return url
end

return util