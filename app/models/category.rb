class Category < ActiveRecord::Base
	has_many :products, dependent: :destroy
	 accepts_nested_attributes_for :products, :reject_if => lambda { |product| product[:name].blank?  }, :allow_destroy => true
end

