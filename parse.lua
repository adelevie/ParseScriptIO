parse = {}

parse.client = {}
function parse.client.new(keys)
  local self = {
    application_id = keys.application_id,
    rest_api_key = keys.rest_api_key,
    version = '1',
    host = 'https://api.parse.com'
  }

  function self:base_uri()
    self.host + "/" + self.version
  end
end




return parse

--[[

client = parse.client.new({
  'application_id' = '123456',
  'rest_api_key' = 'abcdefgh'
})

client.get('/classes/Post/12345')

]]--