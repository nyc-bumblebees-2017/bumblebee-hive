get '/bumblebees' do
  require_bumblebee
  @bumblebees = Bumblebee.all
  erb :'/bumblebees/index'
end

get '/bumblebees/new' do
  erb :'/bumblebees/new'
end

post '/bumblebees' do
  bumblebee = Bumblebee.new(params[:bumblebee])
  if bumblebee.save
    session[:bumblebee_id] = bumblebee.id
    redirect '/bumblebees'
  else
    status 400
    @errors = bumblebee.errors.full_messages
    erb :'/bumblebees/new'
  end
end