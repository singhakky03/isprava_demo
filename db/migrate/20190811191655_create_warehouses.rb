class CreateWarehouses < ActiveRecord::Migration[5.2]
  def change
    create_table :warehouses do |t|
      t.string :name
      t.string :wh_code
      t.string :pincode
      t.integer :max_capcity

      t.timestamps
    end
  end
end
