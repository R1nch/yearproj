class CreateYps < ActiveRecord::Migration[6.1]
  def change
    create_table :yps do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :socnet

      t.timestamps
    end
  end
end
