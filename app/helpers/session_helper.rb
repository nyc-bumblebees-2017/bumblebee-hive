def current_bumblebee
  Bumblebee.find(session[:bumblebee_id]) if session[:bumblebee_id]
end