class RenderMessage
  include ActionView::Helpers
  include ActionView::Context
  include LocalTimeHelper

  def initialize(nickname, created_at, content, announcement: false)
    @nickname = nickname
    @created_at = created_at
    @content = content
    @announcement = announcement
  end

  def call
    content_tag(:div, class: "message-body") do
      content_tag(:strong, "#{nickname} ") +
      content_tag(:span, local_time_ago(created_at), class: "text-muted") +
      content_tag(:p, markdown_content, class: message_body_class)
    end
  end

  private

    attr_reader :nickname, :created_at, :content, :announcement

    def markdown_content
      RenderMarkdown.new(content).call
    end

    def message_body_class
      ["message-body", announcement_class].join(" ")
    end

    def announcement_class
      announcement ? "announcement" : ""
    end
end
