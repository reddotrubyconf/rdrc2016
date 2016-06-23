require 'html/pipeline/red_dot_ruby_conf/nohtml_markdown_filter'
require 'html/pipeline/red_dot_ruby_conf/emoji_filter'

class RenderMarkdown
  def initialize(content)
    @content = content
  end

  def call(**options)
    pipeline = HTML::Pipeline.new [
      HTML::Pipeline::RedDotRubyConf::NohtmlMarkdownFilter,
      HTML::Pipeline::SanitizationFilter,
      HTML::Pipeline::ImageMaxWidthFilter,
      HTML::Pipeline::RedDotRubyConf::EmojiFilter,
    ], { gfm: true, **options }

    pipeline.call(content)[:output].to_s.html_safe
  end

  private

    attr_reader :content
end
