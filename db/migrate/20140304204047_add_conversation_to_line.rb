class AddConversationToLine < ActiveRecord::Migration
  def change
    add_column :lines, :conversation_id, :integer
  end
end
