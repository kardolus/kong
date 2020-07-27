package = "kong-auth-hash"
version = "0.0.1-1"


supported_platforms = {"linux", "macosx"}
source = {
  url = "http://github.com/kardolus/kong/kong/plugins/kong-auth-hash",
  tag = "0.0.1"
}

description = {
  summary = "hash key-auth credentials",
  homepage = "http://github.com/kardolus/kong/kong/plugins/kong-auth-hash",
  license = "MIT"
}

dependencies = {
}

local pluginName = "key-auth-hash"
build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "schema.lua",
    ["kong.plugins."..pluginName..".daos"] = "daos.lua",
  }
}
