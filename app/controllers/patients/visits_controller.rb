class Patients::VisitsController < ApplicationController

	def index
		@visits = current_patient.visits
	end

	def new_appointment
		@cities = City.all
		@available_visits = Visit.where(doctor_id: params[:doctor_id])

		respond_to do |format|
			format.html
			format.js
		end
	end

	def filtered_institutions
		@institutions = Institution.where(city_id: params[:city])

		respond_to do |format|
			format.html
			format.js
		end
	end

	def filtered_doctors
		@doctors = Doctor.where(institution_id: params[:institution]) and Doctor.where(specialization_id: params[:specialization])
		respond_to do |format|
			format.html
			format.js
		end
	end

	def filtered_specializations
		@specializations = Specialization.all

		respond_to do |format|
			format.html
			format.js
		end
	end
end