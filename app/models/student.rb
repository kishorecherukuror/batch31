class Student < ActiveRecord::Base
	has_many :sections
	has_many :teachers, through: :sections
end

