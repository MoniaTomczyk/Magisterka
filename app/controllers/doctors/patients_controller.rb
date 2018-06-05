class Doctors::PatientsController < ApplicationController

	def index
		@patients = current_doctor.patients
		@visits = current_doctor.visits
	end

	def show
		@patient = Patient.find(params[:id])
	end

end