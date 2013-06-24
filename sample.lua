local memcached = require "resty.memcachedp"

-- initiate a new instance
local memc = memcached:new({
    { host = '127.0.0.1', port = 11211, hash = 12345 },
})

-- storage
memc:set ("abc", 123)

-- retrieving
print (memc:get ("abc"))
