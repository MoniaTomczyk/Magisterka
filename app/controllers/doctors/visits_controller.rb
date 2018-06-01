class Doctors::VisitsController < ApplicationController

	def index
		@visits = current_doctor.visits.where(deleted_at: nil)
	end

	def new
		@visit = Visit.new
	end


	def show
		@visit = Visit.find(params[:id])
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

	def update_note(notes)
    	visit = Visit.find(params[:id])
    	if visit.update_attributes(notes)
        	flash[:success] = "Odwołałeś wizytę"
    	else
     		render 'delete_visit'
    	end
  	end

end