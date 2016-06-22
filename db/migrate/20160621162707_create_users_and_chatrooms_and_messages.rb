class CreateUsersAndChatroomsAndMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :nickname, null: false
      t.string :remember_token, null: false

      t.timestamps
    end

    create_table :chatrooms do |t|
      t.string :slug, null: false

      t.timestamps
    end

    create_table :messages do |t|
      t.string :content, null: false
      t.boolean :announcement, default: false
      t.belongs_to :chatroom, index: true
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
