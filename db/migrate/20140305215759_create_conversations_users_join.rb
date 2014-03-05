class CreateConversationsUsersJoin < ActiveRecord::Migration
  def up
    create_table :conversations_users do |t|
      t.integer :conversation_id
      t.integer :user_id
    end
  end

  def down
    drop_table :conversations_users
  end
end
