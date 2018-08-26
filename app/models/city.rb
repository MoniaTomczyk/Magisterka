class City < ActiveRecord::Base
	has_many :institutions
	validates :name, presence: true


	def index
		@city = City.all 
	end

	def name_with_initial
   		"#{first_name.first}. #{last_name}"
    end 
end
