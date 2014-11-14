get '/' do
  # Look in app/views/index.erb
  if session[:user_id]
    @user = User.find(session[:user_id])
  end
  erb :index
end

get '/sessions' do
  erb :login
end

get '/sessions/new' do
  erb :signup
end

post '/sessions/new' do
  @user = User.find_by(email: params[:user][:email])
  if @user && User.authenticate(@user.email, params[:user][:password])
    session[:user_id] = @user.id
    redirect "/"
  else
    redirect "/sessions"
  end
end

post '/sessions' do
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    redirect "/"
  else
    redirect "/users/new"
  end
end

delete '/sessions' do
  session.clear
  redirect '/'
end
