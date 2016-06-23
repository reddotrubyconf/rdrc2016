class MessagesController < ApplicationController
  before_action :authenticate

  def create
    message = Message.new(model_params)
    message.user = current_user

    if message.save
      broadcast_message(message)

      respond_to do |format|
        format.js { render status: :created }
        format.any { head :ok }
      end
    end
  end

  def render_message
    render plain: RenderMessage.new(params[:nickname], params[:timestamp], params[:message]).call
  end

  private

    def model_params
      params.require(:message).permit(:content, :chatroom_id)
    end

    def broadcast_message(message)
      BroadcastMessageJob.perform_later(message)
    end

    def authenticate
      unless signed_in?
        head :ok
      end
    end
end
