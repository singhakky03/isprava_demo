class AddWarehouseToProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :warehouse, foreign_key: true, index: true
  end
end
