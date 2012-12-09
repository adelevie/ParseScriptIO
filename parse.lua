local Parse = {
  client = {
    application_id = nil
  }
}

function Parse.init()
  Parse.client.application_id = "1"
  print "init!"
end

function Parse.client:get()
  if not Parse.client.application_id then
    error("Client not initialized.")
  else then
    print "get!"
  end
end

return Parse