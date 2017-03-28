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

Subject.create(name: "matematicas")
Subject.create(name: "fisica")
Subject.create(name: "quimica")

Topic.create(name: "calculo diferencial", subject_id: Subject.find_by(name: "matematicas").id)
Topic.create(name: "calculo integral", subject_id: Subject.find_by(name: "matematicas").id)
Topic.create(name: "astrofisica", subject_id: Subject.find_by(name: "fisica").id)
Topic.create(name: "biofisica", subject_id: Subject.find_by(name: "fisica").id)
Topic.create(name: "quimica organica", subject_id: Subject.find_by(name: "quimica").id)
Topic.create(name: "quimica inorganica", subject_id: Subject.find_by(name: "quimica").id)
