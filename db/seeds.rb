# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# PersonalDatum.create!( myname: "吳秉勳" )

PersonalDatum.create(myname_en: "Ping-Hsun Wu", myname_tw: "吳秉勳")

CommonTitle.create(title_en: "Front-End", title_tw: "前端")

Month.create(name_en: "Sep", name_tw: "九月")
Month.create(name_en: "June", name_tw: "六月")