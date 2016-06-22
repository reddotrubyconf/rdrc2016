class SessionsController < ApplicationController
  layout "plaza"

  def new
    return redirect_to(chatroom_url) if current_user.present?

    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:remember_token] = @user.remember_token
      redirect_to chatroom_url
    else
      redirect_to engage_url
    end
  end

  private

    def user_params
      params.require(:user).permit(:nickname)
    end
end
