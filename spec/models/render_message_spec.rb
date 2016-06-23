require "rails_helper"

RSpec.describe RenderMessage do
  describe "#call" do
    def render(nickname, created_at, content, announcement: false)
      RenderMessage.new(nickname, created_at, content, announcement: announcement).call
    end

    it "renders correct HTML" do
      result = render("realDonaldTrump", "2016-01-01T00:00:00Z", "Make America Great Again")

      expect(result).to eq %(<div class=\"message-body\"><strong>realDonaldTrump </strong><span class=\"text-muted\"><time datetime=\"2016-01-01T00:00:00Z\" data-local=\"time-ago\">January  1, 2016 12:00am</time></span><p class=\"message-body \"><p>Make America Great Again</p></p></div>)
    end

    it "render links" do
      result = render("realDonaldTrump", "2016-01-01T00:00:00Z", "Visit https://www.donaldjtrump.com/ <script>alert('Vote For Trump!!')</script>")

      expect(result).to eq %(<div class=\"message-body\"><strong>realDonaldTrump </strong><span class=\"text-muted\"><time datetime=\"2016-01-01T00:00:00Z\" data-local=\"time-ago\">January  1, 2016 12:00am</time></span><p class=\"message-body \">Visit <a href=\"https://www.donaldjtrump.com/\" target=\"_blank\">https://www.donaldjtrump.com/</a> alert('Vote For Trump!!')</p></div>)
    end

    context "announcement" do
      it "renders correct HTML with announcement class on content" do
        result = render("RedDotRubyConf2016", Time.current, "Lunch time!", announcement: true)

        expect(result).to include %(<p class=\"message-body announcement\"><p>Lunch time!</p>)
      end
    end
  end
end
