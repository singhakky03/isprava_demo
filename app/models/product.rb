class Product < ApplicationRecord
	belongs_to :warehouse

	validates_presence_of :name, :price, :sku_code
end
