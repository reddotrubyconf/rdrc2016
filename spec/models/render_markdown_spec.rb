require "rails_helper"

RSpec.describe RenderMarkdown do
  it "should convert text to markdown" do
    content = <<-TEXT.strip_heredoc
    This is *great*:
        some_code(:first)
    TEXT

    html = RenderMarkdown.new(content).call

    expect(html).to eq("<p>This is <em>great</em>:<br>\n    some_code(:first)</p>")
  end

  it "keep code & autolink" do
    content = <<-TEXT.strip_heredoc
      > quoted text

      123`<img src="" onerror="alert(1)" />`45678

      hey Blah <trump@example.com>
    TEXT

    html = RenderMarkdown.new(content).call

    expect(html).to eq(<<-TEXT.strip_heredoc.strip)
      <blockquote>
      <p>quoted text</p>
      </blockquote>

      <p>123<code>&lt;img src="" onerror="alert(1)" /&gt;</code>45678</p>

      <p>hey Blah &lt;<a href="mailto:trump@example.com">trump@example.com</a>&gt;</p>
    TEXT
  end

  it "sanitizes bad input" do
    content = <<-TEXT.strip_heredoc
      > quoted text

      123<img src="" onerror="alert(1)" />45678
    TEXT

    html = RenderMarkdown.new(content).call

    expect(html).to eq(<<-TEXT.strip_heredoc.strip)
      <blockquote>
      <p>quoted text</p>
      </blockquote>

      <p>123&lt;img src="" onerror="alert(1)" /&gt;45678</p>
    TEXT
  end

  it "Twemoji" do
    content = <<-TEXT.strip_heredoc
      my oh my :heart_eyes:
    TEXT

    html = RenderMarkdown.new(content).call

    expect(html).to eq("<p>my oh my <img draggable=\"false\" title=\":heart_eyes:\" alt=\"😍\" src=\"https://twemoji.maxcdn.com/2/svg/1f60d.svg\" class=\"emoji\"></p>")
  end
end
