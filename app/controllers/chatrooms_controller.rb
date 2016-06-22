class ChatroomsController < ApplicationController
  layout "plaza"

  def show
    if current_user.present?
      @chatroom = Chatroom.find_by(slug: "rdrc")
      @messages = @chatroom.messages.includes(:user).order(created_at: :asc)
      @message = Message.new
    else
      redirect_to engage_url
    end
  end
end
