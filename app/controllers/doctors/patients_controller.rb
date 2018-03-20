class Doctors::PatientsController < ApplicationController

	def index
		@patients = current_doctor.patients
	end

	def show
		@patient = Patient.find(params[:id])
	end

end