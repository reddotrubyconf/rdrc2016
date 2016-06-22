require "rails_helper"

RSpec.describe Message do
  context "associations" do
    it { should belong_to(:chatroom) }
    it { should belong_to(:user) }
  end

  context "validations" do
    it { should validate_presence_of(:content) }
  end
end
