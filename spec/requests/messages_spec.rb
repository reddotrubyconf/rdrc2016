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
    before { travel_to Time.new(2016, 1, 1, 0, 0, 0) }
    after { travel_back }

    it "renders a message html" do
      sign_in create(:user)

      post render_message_path, params: { nickname: "realDonaldTrump" , timestamp: Time.current, message: "Make America Great Again" }

      expect(response.body).to eq %(<div class=\"message-body\"><strong>realDonaldTrump </strong><span class=\"text-muted\"><time datetime=\"2015-12-31T16:00:00Z\" data-local=\"time-ago\">December 31, 2015  4:00pm</time></span><p class=\"message-body \">Make America Great Again</p></div>)
    end
  end
end
