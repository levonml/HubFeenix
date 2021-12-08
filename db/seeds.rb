# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Space.create!([{
  title: "Earth room",
  size: "10 - 25",
  img_url: "",
  description: "On the ground floor (with a clay plastered wall)

  the earth room is great for groups wanting privacy. It's 50m2, with accommodation on the same floor, sits up to 25 people either with or without tables."
},
{
  title: "The Loft",
  size: "8 - 15",
  img_url: "",
  description: "For smaller groups, we have many 40 m2 rooms, depending on the needs. Dancing, yoga, theatre practise, group work.
  The room shown is especially cosy (a roof extension), and accommodates about 12 yogi or 15 sitting. Also available per hour."
}])

p "Created #{Space.count} movies"