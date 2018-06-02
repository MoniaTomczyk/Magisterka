class Lab < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor
  belongs_to :type
end
