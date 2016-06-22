FactoryGirl.define do
  factory :user do
    nickname { "realDonaldTrump" }
  end

  factory :message do
    content { "Make America Great Again" }
  end
end
