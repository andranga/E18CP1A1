class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.boolean :sold
      t.integer :user_id

      t.timestamps
    end
    add_foreign_key :interactions, :users, column: :user_id
  end
end
