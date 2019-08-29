class Warehouse < ApplicationRecord
	
	has_many :product_details
	has_many :products, through: :product_details
	
	before_create :set_wh_code
	after_create :set_threshold #, on: :create
	
	validates_presence_of :name, :pincode
	validates :wh_code, uniqueness: true

	private

	def set_wh_code
  	code_size = (4..16).to_a
  	charset = [('a'..'z'), ('A'..'Z'), (0..9)].map(&:to_a).flatten
  	code = (0...code_size[rand(code_size.size)]).map{ charset.to_a[rand(charset.size)] }.join
  	self.wh_code = code
	end

	def set_threshold
		 product_detail = ProductDetail.create(low_item_threshold: 10, item_count: 0)
	end

end
