class CreateProductDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :product_details do |t|
      t.integer :item_count
      t.integer :low_item_threshold
      t.integer :product_id
      t.integer :warehouse_id

      t.timestamps
    end
  end
end
