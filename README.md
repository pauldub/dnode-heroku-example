dnode-heroku-example
====================

Running a dnode process on Heroku slugs, this is not actually tested with Heroku but with docker and probably with flynn/slugbuilder and flynn/slugrunner soon. 

At the moment host addresses are not yet implemented in dnode, but you can still telnet to it: 

```
> git push dokku master
...
=====> Application deployed:
       http://localhost:49164

> telnet dokku.example.com 49164

Connected to dokku.example.com
Escape character is '^]'.
{"callbacks":[[1,"hello"]],"arguments":[{"hello":"[Function]"}],"links":[],"method":"methods"}
```

It should be easy to support HTTP using streams.
