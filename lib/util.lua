local http = require("http")
local json = require("json")
local os = require("os")
local util = {}

local GITHUB_API_URL = "https://api.github.com/repos/chaosblade-io/chaosblade/releases"

function util:Available()
    local code, body = http.get(GITHUB_API_URL)
    if code ~= 200 then
        return nil, "Failed to fetch releases from GitHub API."
    end
    local releases = json.decode(body)
    local versions = {}
    for _, release in ipairs(releases) do
        table.insert(versions, {
            version = release.tag_name,
            note = release.prerelease and "prerelease" or ""
        })
    end
    return versions
end

function util:GetDownloadInfo(version)
    local arch = os.arch()
    if arch == "x86_64" then
        arch = "amd64"
    end
    local os_type = os.type()
    if os_type == "Darwin" then
        os_type = "darwin"
    elseif os_type == "Linux" then
        os_type = "linux"
    else
        return nil, "Unsupported OS type: " .. os_type
    end

    local file_name = string.format("chaosblade-%s-%s-%s.tar.gz", version, os_type, arch)
    local url = string.format("https://github.com/chaosblade-io/chaosblade/releases/download/%s/%s", version, file_name)

    local checksum_url = string.format("https://github.com/chaosblade-io/chaosblade/releases/download/%s/checksum.txt", version)
    local code, body = http.get(checksum_url)
    if code ~= 200 then
        return nil, "Failed to fetch checksum file."
    end

    local checksum = ""
    for line in string.gmatch(body, "[^\r\n]+") do
        local sha, name = line:match("([a-f0-9]+)%s+(.+)")
        if name == file_name then
            checksum = sha
            break
        end
    end
    if checksum == "" then
        return nil, "Failed to find checksum for " .. file_name
    end

    return {
        url = url,
        sha256 = checksum
    }
end

return util
