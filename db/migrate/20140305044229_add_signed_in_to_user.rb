class AddSignedInToUser < ActiveRecord::Migration
  def change
    add_column :users, :signed_in, :boolean, default: false
  end
end
