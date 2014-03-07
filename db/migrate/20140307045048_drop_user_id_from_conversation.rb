class DropUserIdFromConversation < ActiveRecord::Migration
  def up
    remove_column :conversations, :user_id
  end

  def down
    add_column :conversations, :user_id, :integer
  end
end
