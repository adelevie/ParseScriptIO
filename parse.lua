parse = {}

parse.protocol = {
  version  = '1',
  host     = 'https://api.parse.com'
  base_url = function() return parse.protocol.host .. "/" .. parse.protocol.version .. "/"
}

return parse