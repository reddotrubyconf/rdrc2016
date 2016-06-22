class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    @current_user ||= User.where(remember_token: session[:remember_token]).first
  end

  def signed_in?
    current_user.present? && current_user.remember_token.present?
  end
end
