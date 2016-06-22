desc "Create seed data for Chatroom"
task chatroom_seed_data: :environment do
  Chatroom.find_or_create_by slug: "rdrc"
  User.find_or_create_by nickname: "RedDotRubyConf"
  User.find_or_create_by nickname: "RedDotRubyConf2016"
  User.find_or_create_by nickname: "RDRC"
end
