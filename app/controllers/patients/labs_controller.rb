class Patients::LabsController < ApplicationController

  def index
    @labs = Lab.where(patient_id: params[:current_patient_id])
  end

end