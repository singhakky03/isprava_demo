class ProductDetail < ApplicationRecord
	has_many :products
	has_one :warehouse, dependent: :destroy


end
