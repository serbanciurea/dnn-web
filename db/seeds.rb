# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# require 'bcrypt'

# admin = User.create!(
#   email: 'admin@dnnovation.com',
#   password_digest: BCrypt::Password.create('Dnnovation1234!'),
#   first_name: 'Admin',
#   last_name: 'Dnnovation',
#   admin: true
# )

# User.create!(email: 'admin@example.com', password: '123456', password_confirmation: '123456', admin: true, first_name: 'Admin', last_name: 'Ad')
# User.create(admin: true, first_name: "a", last_name: "b", pts_number:"1269430", email: "serban@yahoo.com", address: "267 Burnt Oak Broadway", sponsor: "primary", password: "123456")

puts "Cleaning the database..."
puts "Destroy all competencies..."
Competency.destroy_all
puts "Destroy all users..."
User.destroy_all
puts "Destroy all jobs..."
Job.destroy_all

# puts "Destroy all projects..."
# ProjectPort.destroy_all


User.create(first_name: "Serban",
  last_name: "Ciurea",
  email: "ciureaserban777@icloud.com",
  password: "123456",
  address: "HA8 5ED",
  driver: "true",
  phone: "12345678909",
  pts_number: "1234567",
  sponsor: "primary",
  admin: true,
  approved: true
)

User.create(first_name: "Dorin",
  last_name: "Ciurea",
  email: "dorin@dnnovationconstruction.co.uk",
  password: "Dnnovation1234!",
  address: "London",
  driver: "true",
  phone: "12345678909",
  pts_number: "1234567",
  sponsor: "primary",
  admin: true,
  approved: true
)

puts "Create Admin: Serban"

User.create(
  first_name: "Adrian",
  last_name: "Nica",
  email: "miriamciurea777@icloud.com",
  password: "123456",
  address: "HA8 5EF",
  phone: "12345673421",
  pts_number: "1234568",
  sponsor: "primary"
)

puts "Create User: Adrian"

User.create(first_name: "Stefan",
  last_name: "Stancu",
  email: "miriamciurea@gmail.com",
  password: "123456",
  address: "HB8 5ED",
  phone: "12341233421",
  pts_number: "3434568",
  sponsor: "secondary"
)

puts "Create User: Stefan"

puts "Delete all courses..."

Course.destroy_all oh my God

puts "Create Courses..."

Course::COURSE_OPTIONS.each do |category, courses|
  courses.each do |course|
    Course.create(name: course[:name], category: category, description: course[:description])
  end
end
