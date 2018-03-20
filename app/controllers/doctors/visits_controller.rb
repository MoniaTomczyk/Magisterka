class Doctors::VisitsController < ApplicationController

	def index
		@visits = current_doctor.visits
	end

	def new
		@visit = Visit.new
	end


	def show
		@visit = Visit.find(params[:id])
	end

end