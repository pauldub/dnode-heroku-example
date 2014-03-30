local env = require('env')
local dnode = require('dnode')

local port = env.get('PORT') or 7070

local server = dnode:new({
	hello = function(reply) 
		reply("hello world")
	end
})

print("Starting server on port " .. port)
server:listen(port, '0.0.0.0')
