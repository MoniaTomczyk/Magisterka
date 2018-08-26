require 'test_helper'

class RegistrationTest < ActiveSupport::TestCase

	test "registration" do
		visit "/patients/sign_up"
		patient = Patient.new
	end
end