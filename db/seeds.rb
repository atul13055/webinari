# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Workshops are beign created"
workshops = Workshop.create([
  {
   name: "Full stack Ruby on Rails  development bootcamp ",
   description: " some dumy data for workshops description many students add bootcamp,some dumy data for workshops description many students add bootcamp",
   start_date: Date.today + 2.days,
   end_date: Date.today + 9.days,
   start_time: "10:00 AM",
   end_time: "3:00 PM",
   total_sits: 100,
   remaining_sits: 0,
   registration_fee: 1500
}, {
  name: "Full Stack Python development  Bootcamp   ",
  description: " some dumy data for workshops description many students add bootcamp,some dumy data for workshops description many students add bootcamp",
  start_date: Date.today + 3.days,
  end_date: Date.today + 10.days,
  start_time: "10:00 AM",
  end_time: "3:00 PM",
  total_sits: 100,
  remaining_sits: 0,
  registration_fee: 1800
},
{
  name: "Full stack PHP development Bootcamp ",
  description: " some dumy data for workshops description many students add bootcamp,some dumy data for workshops description many students add bootcamp",
  start_date: Date.today + 4.days,
  end_date: Date.today + 12.days,
  start_time: "10:00 AM",
  end_time: "3:00 PM",
  total_sits: 100,
  remaining_sits: 0,
  registration_fee: 1000
},
])
puts "Workshops created"
