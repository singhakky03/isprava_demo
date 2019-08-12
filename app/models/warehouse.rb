class Warehouse < ApplicationRecord
	
	has_many :products, dependent: :destroy
	belongs_to :product_detail
	
	before_create :set_wh_code
	
	validates_presence_of :name, :pincode
	validates :wh_code, uniqueness: true

	private

	def set_wh_code
  	code_size = (4..16).to_a
  	charset = [('a'..'z'), ('A'..'Z'), (0..9)].map(&:to_a).flatten
  	code = (0...code_size[rand(code_size.size)]).map{ charset.to_a[rand(charset.size)] }.join
  	self.wh_code = code
	end

end
