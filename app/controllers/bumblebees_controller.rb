get '/bumblebees' do
  @bumblebees = Bumblebee.all
  erb :'/bumblebees/index'
end

get '/bumblebees/new' do
  erb :'/bumblebees/new'
end

post '/bumblebees' do
  bumblebee = Bumblebee.new(name: params[:name], job: params[:job])
  if bumblebee.save
    redirect '/bumblebees'
  else
    status 400
    @errors = bumblebee.errors.full_messages
    erb :'/bumblebees/new'
  end
end