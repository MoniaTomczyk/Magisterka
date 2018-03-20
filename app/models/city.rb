class City < ActiveRecord::Base
	has_many :institutions

	def index
		@city = City.all 
	end

	def name_with_initial
   		"#{first_name.first}. #{last_name}"
    end 
end
