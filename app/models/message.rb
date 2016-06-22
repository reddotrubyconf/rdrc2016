class Message < ApplicationRecord
  belongs_to :chatroom
  belongs_to :user

  validates_presence_of :content
end
