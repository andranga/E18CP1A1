class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.integer :buyer_id
      t.integer :product_id

      t.timestamps
    end
    add_foreign_key :sales, :users, column: :user_id
    add_foreign_key :sales, :products, column: :product_id
  end
end
