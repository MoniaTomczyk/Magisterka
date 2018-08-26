require 'test_helper'

class LabTest < ActiveSupport::TestCase

	test "createlab" do
		visit "doctors/labs/new"   
			fill_in 'lab_date', :with => "2018-08-23"  

	end
end
