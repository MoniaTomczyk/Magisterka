class Patients::HomeController < ApplicationController

	def index
		@patient = current_patient
	end
#	def show
#		redirect_to '/patients#show'
#	end

end