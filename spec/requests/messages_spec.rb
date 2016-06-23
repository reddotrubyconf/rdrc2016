require "rails_helper"

RSpec.describe "Messages" do
  describe "#create" do
    context "not signed in" do
      it "returns ok" do
        post messages_path

        expect(response.status).to eq 200
      end
    end

    context "success" do
      before do
        Chatroom.create(slug: "rdrc")
        sign_in create(:user)
      end

      it "broadcast and respond ok" do
        allow(BroadcastMessageJob).to receive(:perform_later)

        post messages_path, params: { message: Hash(content: "hi", chatroom_id: Chatroom.last.id)}

        expect(BroadcastMessageJob).to have_received(:perform_later)
        expect(response.status).to eq 200
      end
    end
  end

  describe "#render_message" do
    it "renders a message html" do
      sign_in create(:user)

      post render_message_path, params: { nickname: "realDonaldTrump" , timestamp: "2016-01-01T00:00:00", message: "Make America Great Again" }

      expect(response.body).to eq %(<div class=\"message-body\"><strong>realDonaldTrump </strong><span class=\"text-muted\"><time datetime=\"2016-01-01T00:00:00Z\" data-local=\"time-ago\">January  1, 2016 12:00am</time></span><p class=\"message-body \"><p>Make America Great Again</p></p></div>)
    end
  end
end
