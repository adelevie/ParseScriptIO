if not http then
  http = {} -- mocking Webscript's http library
  function http.request(params)
    return params
  end
end

local parse = {}

parse.protocol = {
  host = "https://api.parse.com",
  version = "1"
}

function parse.protocol:base_uri()
  return parse.protocol.host .. "/" .. parse.protocol.version
end

function parse:init(keys)
  parse.client.application_id = keys.application_id
  parse.client.rest_api_key = keys.rest_api_key
end

parse.client = {
  application_id = nil,
  rest_api_key = nil
}

--[[
function parse.client:headers()
  local result = {
    X-Parse-Application-Id = "1"
  }
  return result
end
--]]

function parse.client:get(path, params)
  return http.request {
    method = "GET",
    url = parse.protocol:base_uri() .. path,
    params = params
  }
end



return parse
--print(parse.protocol.base_uri())

