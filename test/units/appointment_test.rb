require 'test_helper'

class AppointmentTest < ActiveSupport::TestCase

	test "createvisit" do
		visit "patients/visits/new_appointment"   
			fill_in 'city', :with => "Kraków"  

	end
end
