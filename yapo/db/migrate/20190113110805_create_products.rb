class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :owner_id
      t.integer :buyer_id

      t.timestamps
    end
    add_foreign_key :products, :users, column: :owner_id
    add_foreign_key :products, :users, column: :buyer_id 
  end
end
