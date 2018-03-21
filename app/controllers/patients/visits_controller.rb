class Patients::VisitsController < ApplicationController

	def index
		@visits = current_patient.visits
	end

	def show
		@visit = Visit.find(params[:id])
	end

	def new_appointment
		@cities = City.all
		@available_visits = Visit.where(doctor_id: params[:doctor_id])

		respond_to do |format|
			format.html
			format.js
		end
	end

	def assign_visit
		visit = Visit.find(params[:id])
		visit.patient = current_patient
		visit.save!

		redirect_to patient_visits_path
	end

	def filtered_institutions
		@institutions = Institution.where(city_id: params[:city])

		respond_to do |format|
			format.html
			format.js
		end
	end

	def filtered_doctors
		@doctors = Doctor.where(institution_id: params[:institution], specialization_id: params[:specialization])
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

	def show_buttons
	end

	def show_details
		@doctor = Doctor.find(params[:doctor])
	end

	def show_visits_list
		@visits_list = Doctor.find(params[:doctor]).visits.where(patient_id: nil)
	end
end