# ../controllers/concerns/accessible.rb
module Accessible
  extend ActiveSupport::Concern
  included do
    before_action :check_user
  end

  protected
  def check_user
    if current_patient
      flash.clear
      # if you have rails_admin. You can redirect anywhere really
      redirect_to(authenticated_patient_path) && return
    elsif current_doctor
      flash.clear
      # The authenticated root path can be defined in your routes.rb in: devise_scope :user do...
      redirect_to(authenticated_doctor_path) && return
    end
  end
end