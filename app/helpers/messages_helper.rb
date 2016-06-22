module MessagesHelper
  def render_message(message)
    RenderMessage.new(
      message.user.nickname,
      message.created_at,
      message.content,
      announcement: message.announcement
    ).call
  end
end
