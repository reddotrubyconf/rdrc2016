require "rails_helper"

RSpec.describe "Chatrooms" do
  describe "#show" do
    context "not sign in" do
      it "redirects" do
        get chatroom_path

        expect(response).to redirect_to engage_path
      end
    end

    context "signed in" do
      it "goes to rdrc chatroom with messages pull out" do
        sign_in user = create(:user)
        chatroom = Chatroom.create(slug: "rdrc")
        create(:message, content: "😍", chatroom: chatroom, user: user)

        get chatroom_path

        expect(response.body).to include "😍"
      end
    end
  end
end
