class AddUserIdToDive < ActiveRecord::Migration
  def change
    add_column :dives, :user_id, :integer
    add_index :dives, :user_id
  end
end
