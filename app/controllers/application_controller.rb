class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user

  private

  def login_required
    redirect_to "/auth/tradeking" unless current_user
  end

  def current_user
    @current_user ||= session[:user] if session[:user]
  end
end
