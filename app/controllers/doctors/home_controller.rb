class Doctors::HomeController < ApplicationController

	def index
		@doctor = current_doctor
		
	end
end