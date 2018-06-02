class Doctors::LabsController < ApplicationController

  def index
    @labs = Lab.all
  end

  def new
    @lab = Lab.new
  end

  def create
    new_lab = params.require(:lab).permit(:type, :additional_info, :date)
    lab = Lab.create(new_lab)
    redirect_to doctors_labs_show_path(lab)
  end

  def show
    id = params[:id]
    @lab = Lab.find(id)
 
  end

end