class BroadcastMessageJob < ApplicationJob
  queue_as :default

  def perform(message)
    ActionCable.server.broadcast(
      "messages",
      message: message.content,
      nickname: message.user.nickname,
      timestamp: message.created_at,
      uid: message.user.remember_token,
      announcement: message.announcement
    )
  end
end
