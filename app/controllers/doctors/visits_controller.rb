class Doctors::VisitsController < ApplicationController

	def index
		@visits = current_doctor.visits.where(deleted_at: nil).where.not(patient_id: nil)
		@nearest = current_doctor.visits.where(deleted_at: nil).where("date > ?", DateTime.now)
                   .order("date ASC").where.not(patient_id: nil).first
	end

	def new
		@visit = Visit.new
	end


	def show
		@visit = Visit.find(params[:id])
		respond_to do |format|
			format.html
			format.js
		end
	end


	def update(deleted_at)
    	visit = Visit.find(params[:id])
    	if visit.update_attributes(deleted_at)
        	flash[:success] = "Odwołałeś wizytę"
    	else
     		render 'delete_visit'
    	end
  	end

	def delete_visit
		/visit = Visit.find(params[:id])/
		update(deleted_at: Time.current)
		redirect_to doctor_visits_path
	end

	def update_note
    	@visit = Visit.find(params[:visit])
		respond_to do |format|
			format.html
			format.js
		end
  	end

  	def add_note
  		@visit = Visit.find(params[:visit_id])
  		@visit.update_attributes(notes: params[:notes])
  		respond_to do |format|
  			format.html
			format.js
		end
  	end

end