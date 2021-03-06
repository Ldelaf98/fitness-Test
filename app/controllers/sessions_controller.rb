class SessionsController < ApplicationController
  def create
    @user = User.find_or_create_by(name: auth_hash.info.name)
    session[:user_id] = @user.id
    redirect_to '/clientdashboard/index'
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end
  
  protected
  
  def auth_hash
    request.env['omniauth.auth']
  end
end