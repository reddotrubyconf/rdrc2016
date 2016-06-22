require "rails_helper"

RSpec.describe User do
  context "associations" do
    it { should have_many(:messages) }
  end

  context "validations" do
    it { should validate_presence_of(:nickname) }
  end

  describe "#create" do
    it "generates a remember_token" do
      user = build(:user)
      allow(SecureRandom).to receive(:hex) { "remembertoken" }

      user.save

      expect(SecureRandom).to have_received(:hex).with(20)
      expect(user.remember_token).to eq "remembertoken"
    end
  end
end
