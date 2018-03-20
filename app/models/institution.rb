class Institution < ActiveRecord::Base
	belongs_to :city
	has_many :doctors , :through => :specialization
  	has_many :specialization

	def name_with_initial
    	"#{first_name.first}. #{last_name}"
  	end
end
