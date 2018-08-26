require 'test_helper'

class LoginTest < ActiveSupport::TestCase

	test "correctlogin" do
		visit "/patients/sign_in"   
			fill_in 'patient_email', :with => "monikatomczyk93@gmail.com"  
			fill_in 'patient_password', :with => "123monika"   
			click_on 'Zaloguj się' 
			page.assert_text('Chcesz umówić się na wizytę?') 
	end

	test "logout" do
		click_on 'Wyloguj się' 
		page.assert_text('Portal pacjenta') 
	end

	test "uncorrectlogin" do
		visit "/patients/sign_in"   
			fill_in 'patient_email', :with => "monikatomczyk93@gmail.com"  
			fill_in 'patient_password', :with => "monika"   
			click_on 'Zaloguj się' 
			page.assert_text('Nieprawidłowy Email lub hasło') 
	end
end