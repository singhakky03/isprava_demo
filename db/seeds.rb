Warehouse.delete_all
Product.delete_all
ProductDetail.delete_all

warehouses = [["Mumbai", "400059"], ["Banglore", "291923"], ["Delhi", "992020"]]

warehouses.each do |wh|
   warehouse = Warehouse.create(name: wh[0], pincode: wh[1])
   60.times do |prod_create|
      warehouse.products.create(name: Faker::Commerce.product_name, price: Faker::Commerce.price.to_i, warehouse_id: warehouse.id)
   end
end