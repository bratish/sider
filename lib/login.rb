
before do
  if session["username"].nil?
    unless ['/login'].include?(request.path_info) or
        request.path_info =~ /\.css$/
      redirect '/login', 303
    end
    redirect '/login'
  end
  puts "logged in as:#{session['username']}" #if @logged_in_user
end

get '/login' do
  erb :login
end

post '/login' do
  unless $Users[params[:username]].nil?
    if $Users[params[:username]]["password"] == params[:password]
      session["username"] = params[:username]
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
  session["username"] = nil
  redirect '/login'
end
