class Product < ApplicationRecord
	belongs_to :warehouse
	has_one :product_detail

	before_create :set_sku_code
	after_create :set_low_item_count

	validates_presence_of :name, :price

	private

	def set_sku_code
	  size = 5
		charset = [('a'..'z'), ('A'..'Z'), (0..9)].map(&:to_a).flatten
		code = (0...size).map{ charset.to_a[rand(charset.size)] }.join
		self.sku_code = 'PR-' + code 
	end

	def set_low_item_count
	  product_detail = ProductDetail.find_by(warehouse_id: self.warehouse_id)
	  product_detail.update_attributes(item_count: 0, product_id: self.id)
	end

end
