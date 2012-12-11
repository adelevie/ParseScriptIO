local parse = require("parse") -- requring the thing to test

-- stupid test "framework"
local assert_equal = function(good_value, mystery_value)
  if good_value == mystery_value then
    return "Passed."
  else
    error(mystery_value .. " does not equal " .. good_value .. " (expected).")
  end
end

local function run_tests(tests)
  for k,v in pairs(tests) do
    print(k .. ": " .. v())
  end
end
-- end stupid test framework

-- functions to test
local test_functions = {

  test_base_uri = function()
    local result = parse.protocol:base_uri()
    return assert_equal("https://api.parse.com/1", result)
  end,

  test_init_application_id = function()
    parse:init{
      application_id = "my_app_id",
      rest_api_key = "my_rest_key"
    }
    return assert_equal(parse.client.application_id, "my_app_id")
  end,

  test_init_rest_key = function()
    parse:init{
      application_id = "my_app_id",
      rest_api_key = "my_rest_key"
    }
    return assert_equal(parse.client.rest_api_key, "my_rest_key")
  end,

  test_client_get = function()
    local result = parse.client:get("/classes/Post", nil)
    local url = "https://api.parse.com/1/classes/Post"
    return assert_equal(url, result.url)
  end
}
-- end functions to test


run_tests(test_functions) -- run the tests!