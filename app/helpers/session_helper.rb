def current_bumblebee
  Bumblebee.find(session[:bumblebee_id]) if session[:bumblebee_id]
end

def logged_in?
  !!current_bumblebee
end

def require_bumblebee
  if !current_bumblebee
    redirect '/bumblebees/new'
  end    
end