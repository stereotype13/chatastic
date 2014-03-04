class AddVersionToConversation < ActiveRecord::Migration
  def change
    add_column :conversations, :version, :integer
  end
end
