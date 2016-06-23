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
      content_tag(:p, formatted_content, class: message_body_class)
    end
  end

  private

    attr_reader :nickname, :created_at, :content, :announcement

    def message_body_class
      ["message-body", announcement_class].join(" ")
    end

    def announcement_class
      announcement ? "announcement" : ""
    end

    def formatted_content
      @content = RenderMarkdown.new(@content).call
      @content = Rinku.auto_link(@content, :all, 'target="_blank"')

      sanitize(@content, tags: %w(a), attributes: %w(href target))
    end
end
