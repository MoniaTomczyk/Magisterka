# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

#Specialization.create!(name: 'Laryngolog')
#Specialization.create!(name: 'Internista')
#Specialization.create!(name: 'Kardiolog')
#Specialization.create!(name: 'Ortopeda')
#Specialization.create!(name: 'Dermatolog')
#Specialization.create!(name: 'Endokrynolog')
#Specialization.create!(name: 'Chirurg')
#Specialization.create!(name: 'Chirurg dziecięcy')

/ Institution.create!(id: '3', name: 'Białoprądnicka', city_id: '1')
Institution.create!(id: '4', name: 'Bulwarowa', city_id: '1')
Institution.create!(id: '5', name: 'Ignacego Daszyńskiego', city_id: '1')
Institution.create!(id: '6', name: 'Fabryczna', city_id: '1')
Institution.create!(id: '7' ,name: 'Mogilska', city_id: '1')

Institution.create!(id: '8', name: 'Akacjowa', city_id: '2')
Institution.create!(id: '9', name: 'Klasztorna', city_id: '2')
Institution.create!(id: '10', name: 'Kłodzka', city_id: '2')
Institution.create!(id: '11', name: 'Racławicka', city_id: '2')

Institution.create!(id: '12', name: 'Kazimierza Temajera', city_id: '3')
Institution.create!(id: '13', name: 'Kolejowa', city_id: '3')
Institution.create!(id: '14', name: 'Rakoczego', city_id: '3')
Institution.create!(id: '15', name: 'Samuela Lindego', city_id: '3')

Institution.create!(id: '16', name: 'Albatrosów', city_id: '4')
Institution.create!(id: '17', name: 'Rybnicka', city_id: '4')
Institution.create!(id: '18', name: 'Sienkiewicza', city_id: '4')

Institution.create!(id: '19', name: 'Adama Branickiego', city_id: '5')
Institution.create!(id: '20', name: 'Dzwonnicza', city_id: '5')
Institution.create!(id: '21', name: 'Kleopatry', city_id: '5')
Institution.create!(id: '22', name: 'Ekspresowa', city_id: '5')

Institution.create!(id: '23', name: 'Barska', city_id: '6')
Institution.create!(id: '24', name: 'Polna', city_id: '6')

Institution.create!(id: '25', name: 'Adolfa Dygasińskiego', city_id: '7')

Institution.create!(id: '26', name: 'Sebastiana Klonowica', city_id: '8')
Institution.create!(id: '27', name: 'Różana', city_id: '8')

Institution.create!(id: '28', name: 'Powstania Warszawskiego', city_id: '9')
Institution.create!(id: '29', name: 'Kalinowa', city_id: '9')

Institution.create!(id: '30', name: 'Jana Kochanowskiego', city_id: '10')/


TypesOfLabs.create!(name: 'Rentgen')
TypesOfLabs.create!(name: 'Badanie krwi')
TypesOfLabs.create!(name: 'EKG')