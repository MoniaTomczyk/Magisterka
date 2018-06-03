class Type < ActiveRecord::Base
	has_many :labs

	def index
		@type = Type.all 
	end


end
