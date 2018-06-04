class Patients::LabsController < ApplicationController

  def index
    @patient = current_patient
    @labs = Lab.all
    @available_labs = current_patient.labs
  end

  def doctor_full_name
    "#{@labs.doctor.name} #{@labs.doctor.surname}"
  end
end