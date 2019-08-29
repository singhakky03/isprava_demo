class ProductDetail < ApplicationRecord
	belongs_to :product, optional: true
	belongs_to :warehouse
end
