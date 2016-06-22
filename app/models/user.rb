class User < ApplicationRecord
  has_many :messages

  before_create :generate_remember_token

  validates_presence_of :nickname

  def generate_remember_token
    self.remember_token = SecureRandom.hex(20)
  end
end
