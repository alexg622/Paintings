class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :login, :logout, :current_user, :the_artist

  def login(artist)
  	session[:artist_id] = artist.id 
  end 

  def logout
  	session[:artist_id] = nil 
  end 

  def current_user 
  	if session[:artist_id]
  		Artist.find(session[:artist_id])
  	else 
  		nil 
  	end 
  end 

  def the_artist
    Artist.find_by(id: 1)
  end 
end
