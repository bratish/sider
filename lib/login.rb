
before do
   unless ['/login'].include?(request.path_info) or
         request.path_info =~ /\.css$/ or
         request.path_info =~ /\.js$/ or
         request.cookies["loggedin"] == "true"

    redirect '/login'
  end
  puts "logged in as: #{request.cookies["username"]}"
end

get '/login' do
  if request.cookies["loggedin"] == "true"
    redirect "/"
  else
    erb :login
  end
end

post '/login' do
  $Users ||= YAML::load(File.open('secrets/credentials.yaml'))
  unless $Users[params[:username]].nil?
    if $Users[params[:username]]["password"] == params[:password]
#      session["username"] = params[:username]
      response.set_cookie('loggedin', :value => true)
      response.set_cookie('username', :value => params[:username])
      redirect '/'
    else
      @login_error = "Incorrect username or password"
      erb :login
    end
    @login_error = "Incorrect username or password"
    erb :login
  end
end

get '/logout' do
  response.set_cookie('loggedin', :value => false)
  redirect '/'
end
