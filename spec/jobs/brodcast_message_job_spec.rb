require "rails_helper"

RSpec.describe BroadcastMessageJob do
  it "queue_as default" do
    expect(BroadcastMessageJob.new.queue_name).to eq("default")
  end

  describe "perform" do
    it "syncs repos and sets refreshing_repos to false" do
      user = double(:user)
      message = double(:message, user: user)

      allow(message).to receive(:content)
      allow(user).to receive(:nickname)
      allow(message).to receive(:created_at)
      allow(user).to receive(:remember_token)
      allow(message).to receive(:announcement)
      expect(ActionCable).to receive_message_chain(:server, :broadcast)

      BroadcastMessageJob.perform_now(message)

      expect(message).to have_received(:content)
      expect(user).to have_received(:nickname)
      expect(user).to have_received(:remember_token)
    end
  end
end
