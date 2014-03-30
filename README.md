dnode-heroku-example
====================

Running a dnode process on Heroku slugs, this is not actually tested with Heroku but with docker and probably with flynn/slugbuilder and flynn/slugrunner soon.

You can then start requesting the server:

- Push a release and then start luvit

```sh
> git push dokku master
...
=====> Application deployed:
			 http://example.com:49164

> luvit
```

- Now you can connect to the remote host.

```lua
local dnode = require('dnode')

local client = dnode:new()

client:connect(49164, 'example.com', function(remote)
	remote.hello(msg)
		print(msg)
	end
end)
```
