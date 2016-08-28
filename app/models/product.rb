class Product < ActiveRecord::Base
	validates :sku, presence: true, length: { minimum: 6 }
	validates :name, length: { minimum: 6 }, format: { with: /\A[a-zA-Z0-9 ]+\z/,
    message: "only allows letter and number" }
	validates :price,  numericality: true
	validate :price_check
	#validates :totalprice, presence: true	

	before_save :sku_upper

	before_save :total_price

	scope :find_sku , -> (sku) {  where(:sku => sku)}
	scope :find_name, lambda { |name| where(:name => name) }
	scope :find_price, -> (price) { where(:price => price)}

	def total_price
		self.totalprice = self.price.to_i * self.quantity.to_i
	end

	def sku_upper
		self.sku.upcase!
	end

	def price_check
		if self.price.to_i < 10000 or self.price.to_i > 100000
			errors.add(:price, "Price should be in range of 10000 - 100000")
		end
	end			
end
