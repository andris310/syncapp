class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :sku
      t.integer :in_stock
      t.integer :cost
      t.integer :retail_price
      t.integer :sold

      t.timestamps
    end
  end
end
