local parse = require("parse") -- requring the thing to test

-- stupid test "framework"
local assert_equal = function(good_value, mystery_value)
  if good_value == mystery_value then
    return "Passed"
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
    result = parse.protocol.base_uri()
    return assert_equal("https://api.parse.com/1/", result)
  end,

  test_something_else = function()
    return assert_equal(4, 4)
  end
}
-- end functions to test


run_tests(test_functions) -- run the tests!