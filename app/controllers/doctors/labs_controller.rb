class Doctors::LabsController < ApplicationController

  def index
    @labs = Lab.all
  end

  def new
    @lab = Lab.new
    @doctor = current_doctor
    @patient = current_doctor.patients
  
  end

  def create
    new_lab = params.require(:lab).permit(:type_id, :additional_info, :date, :attachment, :patient_id, :doctor_id)
    lab = Lab.create(new_lab)
    redirect_to doctors_labs_list_path
  end

  def show
    id = params[:id]
    @lab = Lab.find(id)
 
  end

  def download_pdf
    lab = Lab.find(params[:id])
    send_file lab.attachment.url
  end

  def download_file
    id = params[:id]
    @lab = Lab.find(id)
    attachment_path = @lab.attachment_file_name
  end

  def show_list
    @labs = current_doctor.labs

  end

end