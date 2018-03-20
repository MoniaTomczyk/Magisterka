desc 'Test rake task'
task 'create_many_visits' => :environment do

	doctors = Doctor.all
	doctors.each do |doctor|
		10.times do |days|
			date = DateTime.new(2018,02,13,8,0) + days
			if !date.saturday? || !date.sunday?
				18.times do |visit_number|
					datetime = date + (visit_number * 20).minutes
					Visit.create!(date: datetime, doctor_id: doctor.id)
				end
			end
			puts "Visits in #{date} for doctor #{doctor.surname} have been created!"
		end
	end	
end
