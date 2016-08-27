class Brand < ActiveRecord::Base
	has_many :spects, dependent: :destroy
end
