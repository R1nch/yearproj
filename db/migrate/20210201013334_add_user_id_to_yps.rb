class AddUserIdToYps < ActiveRecord::Migration[6.1]
  def change
    add_column :yps, :user_id, :integer
    add_index :yps, :user_id
  end
end
