get '/splits' do
  erb :index
end

get '/splits/new' do
  @user = params[:user_id]
  erb :enter_times
end

post '/splits' do
  @split = Split.new(params[:split].merge(completed_route_id: 1))
  @split.save
  redirect "splits"
end
