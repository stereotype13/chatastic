class AddUserIdToConversations < ActiveRecord::Migration
  def change
    add_column :conversations, :user_id, :integer
    add_index :conversations, :user_id
  end
end
