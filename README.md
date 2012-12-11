ParseScriptIO
=============

A WebScript.io (Lua) module for Parse.com. Experimental.

Aiming for something like this:

```lua
parse = require('parse')

parse:init{
  application_id = "122",
  rest_api_key = "abcd"
}

post = parse.object:new("Post")
post.set_attribute("title", "Hello, Lua.")
post.set_attribute("author", "Alan deLevie")
post.set_attribute("body", "An interesting language...")
post.save

query = Parse.query:new("Post")
query.eq("author", "Alan deLevie")
results = query.find
print(results[0].get_attribute("body"))
```