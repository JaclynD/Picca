# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require "csv"

companies_csv = CSV.readlines("db/restaurants.csv")
companies_csv.shift
companies_csv.each do |row|
  Restaurant.create(name: row[1], address: row[2], main_image: row[3], location: row[4], genre: row[5], seats: row[6], budget: row[7], access: row[8], mobile_access: row[9], open: row[10])
end
