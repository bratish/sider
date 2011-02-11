COMMANDS = {
  "sort"=>
  "key [BY pattern] [LIMIT offset count] [GET pattern [GET pattern ...]] [ASC|DESC] [ALPHA] [STORE destination] Sort the elements in a list, set or sorted set",
 "getset"=>"key value Set the string value of a key and return its old value",
 "renamenx"=>"key newkey Rename a key, only if the new key does not exist",
 "multi"=>"Mark the start of a transaction block",
 "move"=>"key db Move a key to another database",
 "zrevrangebyscore"=>
  "key max min [WITHSCORES] [LIMIT offset count] Return a range of members in a sorted set, by score, with scores ordered from high to low",
 "zrevrange"=>
  "key start stop [WITHSCORES] Return a range of members in a sorted set, by index, with scores ordered from high to low",
 "incrby"=>
  "key increment Increment the integer value of a key by the given number",
 "lrem"=>"key count value Remove elements from a list",
 "sismember"=>"key member Determine if a given value is a member of a set",
 "exists"=>"key Determine if a key exists",
 "msetnx"=>
  "key value [key value ...] Set multiple keys to multiple values, only if none of the keys exist",
 "zremrangebyrank"=>
  "key start stop Remove all members in a sorted set within the given indexes",
 "sadd"=>"key member Add a member to a set",
 "monitor"=>"Listen for all requests received by the server in real time",
 "rename"=>"key newkey Rename a key",
 "sinterstore"=>
  "destination key [key ...] Intersect multiple sets and store the resulting set in a key",
 "rpoplpush"=>
  "source destination Remove the last element in a list, append it to another list and return it",
 "zrange"=>
  "key start stop [WITHSCORES] Return a range of members in a sorted set, by index",
 "decr"=>"key Decrement the integer value of a key by one",
 "debug"=>"SEGFAULT Make the server crash",
 "psubscribe"=>
  "pattern Listen for messages published to channels matching the given patterns",
 "mget"=>"key [key ...] Get the values of all the given keys",
 "srandmember"=>"key Get a random member from a set",
 "zincrby"=>
  "key increment member Increment the score of a member in a sorted set",
 "hgetall"=>"key Get all the fields and values in a hash",
 "quit"=>"Close the connection",
 "setrange"=>
  "key offset value Overwrite part of a string at key starting at the specified offset",
 "lastsave"=>"Get the UNIX time stamp of the last successful save to disk",
 "brpoplpush"=>
  "source destination timeout Pop a value from a list, push it to another list and return it; or block until one is available",
 "setbit"=>
  "key offset value Sets or clears the bit at offset in the string value stored at key",
 "hget"=>"key field Get the value of a hash field",
 "select"=>"index Change the selected database for the current connection",
 "hmget"=>"key field [field ...] Get the values of all the given hash fields",
 "zscore"=>
  "key member Get the score associated with the given member in a sorted set",
 "unsubscribe"=>
  "[channel [channel ...]] Stop listening for messages posted to the given channels",
 "unwatch"=>"Forget about all watched keys",
 "zrevrank"=>
  "key member Determine the index of a member in a sorted set, with scores ordered from high to low",
 "getrange"=>"key start end Get a substring of the string stored at a key",
 "strlen"=>"key Get the length of the value stored in a key",
 "lpush"=>"key value Prepend a value to a list",
 "getbit"=>
  "key offset Returns the bit value at offset in the string value stored at key",
 "get"=>"key Get the value of a key",
 "bgsave"=>"Asynchronously save the dataset to disk",
 "punsubscribe"=>
  "[pattern [pattern ...]] Stop listening for messages posted to channels matching the given patterns",
 "spop"=>"key Remove and return a random member from a set",
 "expire"=>"key seconds Set a key's time to live in seconds",
 "flushall"=>"Remove all keys from all databases",
 "slaveof"=>
  "host port Make the server a slave of another instance, or promote it as master",
 "hdel"=>"key field Delete a hash field",
 "exec"=>"Execute all commands issued after MULTI",
 "ltrim"=>"key start stop Trim a list to the specified range",
 "expireat"=>"key timestamp Set the expiration for a key as a UNIX timestamp",
 "sunion"=>"key [key ...] Add multiple sets",
 "save"=>"Synchronously save the dataset to disk",
 "watch"=>
  "key [key ...] Watch the given keys to determine execution of the MULTI/EXEC block",
 "sunionstore"=>
  "destination key [key ...] Add multiple sets and store the resulting set in a key",
 "echo"=>"message Echo the given string",
 "ping"=>"Ping the server",
 "ttl"=>"key Get the time to live for a key",
 "zcount"=>
  "key min max Count the members in a sorted set with scores within the given values",
 "setex"=>"key seconds value Set the value and expiration of a key",
 "zinterstore"=>
  "destination numkeys key [key ...] [WEIGHTS weight [weight ...]] [AGGREGATE SUM|MIN|MAX] Intersect multiple sorted sets and store the resulting sorted set in a new key",
 "sdiff"=>"key [key ...] Subtract multiple sets",
 "zrem"=>"key member Remove a member from a sorted set",
 "rpop"=>"key Remove and get the last element in a list",
 "del"=>"key [key ...] Delete a key",
 "flushdb"=>"Remove all keys from the current database",
 "smove"=>"source destination member Move a member from one set to another",
 "sync"=>"Internal command used for replication",
 "keys"=>"pattern Find all keys matching the given pattern",
 "append"=>"key value Append a value to a key",
 "hincrby"=>
  "key field increment Increment the integer value of a hash field by the given number",
 "lpop"=>"key Remove and get the first element in a list",
 "hexists"=>"key field Determine if a hash field exists",
 "linsert"=>
  "key BEFORE|AFTER pivot value Insert an element before or after another element in a list",
 "zrank"=>"key member Determine the index of a member in a sorted set",
 "dbsize"=>"Return the number of keys in the selected database",
 "zremrangebyscore"=>
  "key min max Remove all members in a sorted set within the given scores",
 "bgrewriteaof"=>"Asynchronously rewrite the append-only file",
 "setnx"=>"key value Set the value of a key, only if the key does not exist",
 "mset"=>"key value [key value ...] Set multiple keys to multiple values",
 "discard"=>"Discard all commands issued after MULTI",
 "publish"=>"channel message Post a message to a channel",
 "subscribe"=>"channel Listen for messages published to the given channels",
 "zadd"=>
  "key score member Add a member to a sorted set, or update its score if it already exists",
 "scard"=>"key Get the number of members in a set",
 "brpop"=>
  "key [key ...] timeout Remove and get the last element in a list, or block until one is available",
 "hset"=>"key field value Set the string value of a hash field",
 "blpop"=>
  "key [key ...] timeout Remove and get the first element in a list, or block until one is available",
 "zcard"=>"key Get the number of members in a sorted set",
 "lpushx"=>"key value Prepend a value to a list, only if the list exists",
 "hmset"=>
  "key field value [field value ...] Set multiple hash fields to multiple values",
 "hlen"=>"key Get the number of fields in a hash",
 "lset"=>"key index value Set the value of an element in a list by its index",
 "hkeys"=>"key Get all the fields in a hash",
 "llen"=>"key Get the length of a list",
 "rpushx"=>"key value Append a value to a list, only if the list exists",
 "persist"=>"key Remove the expiration from a key",
 "lrange"=>"key start stop Get a range of elements from a list",
 "zunionstore"=>
  "destination numkeys key [key ...] [WEIGHTS weight [weight ...]] [AGGREGATE SUM|MIN|MAX] Add multiple sorted sets and store the resulting sorted set in a new key",
 "randomkey"=>"Return a random key from the keyspace",
 "lindex"=>"key index Get an element from a list by its index",
 "rpush"=>"key value Append a value to a list",
 "srem"=>"key member Remove a member from a set",
 "info"=>"Get information and statistics about the server",
 "set"=>"key value Set the string value of a key",
 "zrangebyscore"=>
  "key min max [WITHSCORES] [LIMIT offset count] Return a range of members in a sorted set, by score",
 "hsetnx"=>
  "key field value Set the value of a hash field, only if the field does not exist",
 "auth"=>"password Authenticate to the server",
 "shutdown"=>
  "Synchronously save the dataset to disk and then shut down the server",
 "sinter"=>"key [key ...] Intersect multiple sets",
 "incr"=>"key Increment the integer value of a key by one",
 "type"=>"key Determine the type stored at key",
 "smembers"=>"key Get all the members in a set",
 "decrby"=>
  "key decrement Decrement the integer value of a key by the given number",
 "hvals"=>"key Get all the values in a hash",
 "sdiffstore"=>
  "destination key [key ...] Subtract multiple sets and store the resulting set in a key",
 "config"=>"RESETSTAT Reset the stats returned by INFO"}.keys
