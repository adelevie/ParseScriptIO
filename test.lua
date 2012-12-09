local parse = require("parse")

local assert_equal = function(good_value, mystery_value)
	if good_value == mystery_value then
		return "Passed"
	else
		return mystery_value .. " does not equal " .. good_value .. " (expected)."
	end
end

local test_functions = {
	test_base_uri = function()
		result = parse.protocol.base_uri()
		return assert_equal("https://api.parse.com/1/", result)
	end,

	test_something_else = function()
		return assert_equal(1, 4)
	end
}

local function run_tests(tests)
	for k,v in pairs(tests) do
		print(k .. ": " .. v())
	end
end

run_tests(test_functions)