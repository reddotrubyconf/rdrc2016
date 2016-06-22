require "rails_helper"

RSpec.describe "Sessions" do
  describe "#new" do
    context "with user" do
      it "redirects" do
        sign_in create(:user)

        get engage_path

        expect(response).to redirect_to chatroom_path
      end
    end
  end

  describe "#create" do
    context "success" do
      it "set session and redirects" do
        post create_path, params: { user: { nickname: "realDonaldTrump" } }

        user = User.find_by(nickname: "realDonaldTrump")

        expect(session[:remember_token]).to eq user.remember_token
        expect(response).to redirect_to chatroom_path
      end
    end

    context "failure" do
      it "redirects" do
        post create_path, params: { user: { nickname: "" } }

        expect(response).to redirect_to engage_path
      end
    end
  end
end
