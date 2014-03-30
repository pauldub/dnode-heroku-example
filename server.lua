local env = require('env')
local dnode = require('dnode')

local port = env.get('PORT') or 7070

print("Starting server on port " .. port)
dnode:listen({
	hello = function(reply) 
		reply("hello world")
	end
}, port)

