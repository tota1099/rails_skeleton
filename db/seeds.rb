# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

account = Account.create(name: "Development Account")
user = User.create(name: "Dev User", email: "dev@example.com", password: "$2a$12$73RK7CfC.hUHVMjGyFUxmuifnv2Y73ndExvOyih4q17V4eyech5UG")