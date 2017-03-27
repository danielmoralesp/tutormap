# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Country.create(name: "colombia")
Country.create(name: "mexico")

City.create(name: "medellin", country_id: Country.find_by(name: "colombia").id)
City.create(name: "bogota", country_id: Country.find_by(name: "colombia").id)
City.create(name: "ciudad de mexico", country_id: Country.find_by(name: "mexico").id)
City.create(name: "guadalajara", country_id: Country.find_by(name: "mexico").id)
