class Chatroom < ApplicationRecord
  has_many :messages, dependent: :destroy

  validates_presence_of :slug
end
