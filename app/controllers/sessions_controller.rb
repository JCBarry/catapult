class SessionsController < ApplicationController
  def create
    auth = request.env["omniauth.auth"]
    user = User.new({:username => auth.info.uid, :email => auth.info.email, :name => auth.info.name, :access_token => auth})
    session[:user] = user
    redirect_to root_url, :notice => "Signed in!"
  end

  def destroy
    session[:user] = nil
    redirect_to root_url, :notice => "Signed out!"
  end
end