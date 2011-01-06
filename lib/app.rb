
def redis
  $redis ||= Redis.new
end

get "/" do
  erb :index
end

get '/get-keys/:sstr' do
  keys = redis.keys("*#{params['sstr']}*")
  content_type :json
  {'searchStr' => params['sstr'], 'keys' => keys}.to_json
end

get '/get-key-value/:key' do
  key = params['key']
  type = redis.type(key)
  result = case(type)
  when 'string'
    redis[key]    
  when 'set'
    redis.smembers(key)
  when 'zset'
    redis.zrange(key, 0, -1)
  when 'hash'
    redis.hgetall(key)
  when 'list'
    redis.lrange(key, 0, -1)
  else
    nil
  end
  content_type :json
  {'result' => result, 'keyType' => type}.to_json
end