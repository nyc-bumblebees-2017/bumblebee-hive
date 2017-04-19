get '/bumblebees' do
  @bumblebees = Bumblebee.all
  erb :'/bumblebees/index'
end

get '/bumblebees/new' do
  erb :'/bumblebees/new'
end

post '/bumblebees' do
  Bumblebee.create(name: params[:name], job: params[:job])
  redirect '/bumblebees'
end