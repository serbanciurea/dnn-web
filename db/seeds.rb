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
