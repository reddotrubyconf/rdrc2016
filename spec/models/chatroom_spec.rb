require "rails_helper"

RSpec.describe Chatroom do
  context "associations" do
    it { should have_many(:messages).dependent(:destroy) }
  end

  context "validations" do
    it { should validate_presence_of(:slug) }
  end
end
