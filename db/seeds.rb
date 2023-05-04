Patient.destroy_all
Doctor.destroy_all
Appointment.destroy_all
City.destroy_all
Specialty.destroy_all

spec = ["Généraliste", "Dentiste", "Ostéopathe", "Dermatologue", "Anesthésiste", "Orthopédiste", "Cardiologue"] #7
cities = ["Lille", "Paris", "Tours", "Rennes", "Bordeau"] # 5
patients = Array.new
doctors = Array.new
town = Array.new
specs = Array.new


#### Manual
5.times do |i|
  name = City.create!(name: cities[i])
  town << name
end
7.times do |i|
  name = Specialty.create!(name: spec[i])
  specs << name
end

# # - patients
# emmanuel = Patient.create!(first_name: "Emmanuel", last_name: "Beaugendre", city_id: town[rand(0..4)].id)
# zine = Patient.create!(first_name: "Zine", last_name: "Bendif", city_id: town[rand(0..4)].id)
# vincent = Patient.create!(first_name: "Vincent", last_name: "Deloffre", city_id: town[rand(0..4)].id)
# nicolas_c = Patient.create!(first_name: "Nicolas", last_name: "Chiron", city_id: town[rand(0..4)].id)
# nicolas_v= Patient.create!(first_name: "Nicolas", last_name: "Vadelorge", city_id: town[rand(0..4)].id)
# # - docteurs
# jm = Doctor.create!(first_name: "Jean-Michel", last_name: "Laracheur", zip_code: "66666", city_id: town[rand(0..4)].id, specialty_id: specs[rand(0..6)].id)
# serge = Doctor.create!(first_name: "Serge", last_name: "briseur", zip_code: "66666", city_id: town[rand(0..4)].id, specialty_id: specs[rand(0..6)].id)
# camille = Doctor.create!(first_name: "Camille", last_name: "Sauveuze", zip_code: "41265", city_id: town[rand(0..4)].id, specialty_id: specs[rand(0..6)].id)
# # - rendez-vous
# rdv_1 = Appointment.create!(doctor_id: jm.id, patient_id: zine.id, date: "2022-12-03T14:30:00", city_id: town[rand(0..4)].id)
# rdv_2 = Appointment.create!(doctor_id: serge.id, patient_id: nicolas_v.id, date: "2023-08-09T010:00:00", city_id: town[rand(0..4)].id)
# rdv_3 = Appointment.create!(doctor_id: jm.id, patient_id: vincent.id, date: "2024-01-02T09:00:00", city_id: town[rand(0..4)].id)
# rdv_4 = Appointment.create!(doctor_id: camille.id, patient_id: emmanuel.id, date: "2022-05-28T16:45:00", city_id: town[rand(0..4)].id)
# rdv_5 = Appointment.create!(doctor_id: serge.id, patient_id: nicolas_c.id, date: "2022-06-10T15:30:00", city_id: town[rand(0..4)].id)

#### Faker

30.times do |i|
  patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: town[rand(0..4)].id)
  doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code, city_id: town[rand(0..4)].id, specialty_id: specs[rand(0..6)].id)
  patients << patient
  doctors << doctor
end
30.times do |i|
  appointment = Appointment.create!(doctor_id: doctors[rand(1..29)].id, patient_id: patients[rand(1..29)].id, date: DateTime.new(rand(2018..2025), rand(1..12), rand(1..26), rand(7..18), 0, 0), city_id: town[rand(0..4)].id)
end
