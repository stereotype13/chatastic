class AddConversationToLine < ActiveRecord::Migration
  def change
    add_column :lines, :conversation_id, :integer
    add_index :lines, :conversation_id
  end
end
