class Product < ApplicationRecord
	belongs_to :warehouse
	belongs_to :product_detail

	before_create :set_sku_code

	validates_presence_of :name, :price

	private

	def set_sku_code
		size = 5
		charset = [('a'..'z'), ('A'..'Z'), (0..9)].map(&:to_a).flatten
		code = (0...size).map{ charset.to_a[rand(charset.size)] }.join
		self.sku_code = 'PR-' + code 
	end
end
