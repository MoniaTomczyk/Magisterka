# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.create!(email: 'admin@gmail.com', password: 'password', password_confirmation: 'password')
AdminUser.create!(email: 'monikatomczyk93@gmail.com', password: 'password', password_confirmation: 'password')
#AdminUser.create!(email: 'admin@gmail.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

#Specialization.create!(name: 'Laryngolog')
#Specialization.create!(name: 'Internista')
#Specialization.create!(name: 'Kardiolog')
#Specialization.create!(name: 'Ortopeda')
#Specialization.create!(name: 'Dermatolog')
#Specialization.create!(name: 'Endokrynolog')
#Specialization.create!(name: 'Chirurg')
#Specialization.create!(name: 'Chirurg dziecięcy')


#Type.create!(name: 'Rentgen')
#Type.create!(name: 'EKG')
#Type.create!(name: 'Badanie krwi')

#City.create!(id: 1, name: 'Kraków')
#City.create!(id: 2, name: 'Wrocław')

#Institution.create!(id: 1, name: 'ul. Jana Pawła II', city_id: 1)
#Institution.create!(id: 2, name: 'ul. Okulickiego', city_id: 1)
#Institution.create!(id: 3, name: 'Al. Mickiewicza', city_id: 2)
#Institution.create!(id: 4, name: 'ul. Pawia', city_id: 2)
#Institution.create!(name: 'Dermatolog')
#Institution.create!(name: 'Endokrynolog')
#Institution.create!(name: 'Chirurg')
#Institution.create!(name: 'Chirurg dziecięcy')
