set :sessions, true

before do
  $Users ||= YAML::load(File.open('secrets/credentials.yaml'))
  p $Users
end

get "/" do
  erb :index
end