## Consistent Hashing LUA memcache-client
Based on openresty memcached client

## Example usage

<pre>
local memcached = require "resty.memcachedp"

-- initiate a new instance
local memc = memcached:new({
    { host = '127.0.0.1', port = 11211, hash = 12345 },
    { host = '127.0.0.1', port = 11212, hash = 12346 },
})

-- storage
memc:set ("abc", 123)

-- retrieving
print (memc:get ("abc"))
</pre>


## Known problems

- multi_get, multi_set will not work with consistent hashing (correct me if I'm wrong)
