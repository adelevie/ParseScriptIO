local Parse = {}
local Parse.client = {}

function Parse.init()
  Parse.client.application_id = "1"
  print "init!"
end

function Parse.client:get()
  if not self.client.application_id then
    error("Client not initialized.")
  else
    print "get!"
  end
end

return Parse