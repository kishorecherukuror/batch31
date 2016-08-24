class Teacher < ActiveRecord::Base
	validates :fname, presence: true
	validates :lname, length: {minimum: 4}
	validates :ful_name, presence: true
	validates :age,  numericality: true
	validate :age_check
	validates :email,format:{ :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}

	before_validation :full_name

	scope :find_name , -> (name) {  where(:fname => name)}
	scope :find_age, lambda { |age| where(:age => age) }
	scope :find_dept, -> (dept) { where(:department => dept)}
	def full_name
		self.ful_name = "#{self.fname} #{self.lname}"
	end



	def age_check
		if self.age.to_i < 21 or self.age.to_i > 65
			errors.add(:age , "Age should be between 21 to 65 years")
		end
	end
end
