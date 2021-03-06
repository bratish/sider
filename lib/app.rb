
def redis
  $redis ||= Redis.new
end

get "/" do
  erb :index
end

get "/install-redis" do
  require 'git'
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

get '/get-key-type/:key' do
  content_type :json
  {'keyType' => redis.type(params['key'])}.to_json
end

get '/delete/:key' do
  content_type :json
  {'deleted' => redis.del(params['key'])}.to_json
end

get '/rename/:oldKeyName/:newKeyName' do
  redis.rename(params['oldKeyName'], params['newKeyName'])
  content_type :json
  {'renamedKey' => params['newKeyName']}.to_json
end

post '/run-command' do
  content_type :json
  {
    'command' => params['cmd'],
    'output' => Cmd.new(params['cmd']).execute
  }.to_json
end