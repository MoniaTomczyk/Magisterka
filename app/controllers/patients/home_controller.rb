class Patients::HomeController < ApplicationController

	def index
		redirect_to '/patients/visits#index'
	end

#	def show
#		redirect_to '/patients#show'
#	end
end