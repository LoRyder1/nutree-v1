# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



farm = Farm.create!(name: "Almond Farm")



crop = Crop.create!(name: "Almonds")



field = Field.create!(name: "13", farm_id: farm.id, crop_id: crop.id)


formula = Formula.create!(name: "UC Guidelines", rate: 68 )

un32 = Fertilizer.create!(name: "UN32", concentration: 32, density: 11.06)

goal = Goal.create!(field_id: field.id, season: 2015, crop_yield: 4000, nitrogen_credits: 50, formula_id: formula.id)

Fertilization.create!(recommended: 30, rate: 10, density: 1, goal_id: goal.id, soil_date: 2.months.ago, soil_condition: ['Underwatered','Overwatered', 'Optimal'].sample, notes: Faker::Lorem.paragraph, fertilizer_id: un32.id)
Fertilization.create!(recommended: 20, rate: 10, density: 1, goal_id: goal.id, soil_date: 1.month.ago, soil_condition: ['Underwatered','Overwatered', 'Optimal'].sample, notes: Faker::Lorem.paragraph, fertilizer_id: un32.id)
Fertilization.create!(recommended: 20, rate: 10, density: 1, goal_id: goal.id, soil_date: Time.now, soil_condition: ['Underwatered','Overwatered', 'Optimal'].sample, notes: Faker::Lorem.paragraph, fertilizer_id: un32.id)
Fertilization.create!(recommended: 15, rate: 10, density: 1, goal_id: goal.id, soil_date: 1.month.from_now, soil_condition: ['Underwatered','Overwatered', 'Optimal'].sample, notes: Faker::Lorem.paragraph, fertilizer_id: un32.id)
Fertilization.create!(recommended: 15, rate: 10, density: 1, goal_id: goal.id, soil_date: 2.months.from_now, soil_condition: ['Underwatered','Overwatered', 'Optimal'].sample, notes: Faker::Lorem.paragraph, fertilizer_id: un32.id)


Fertilizer.create!(name: "CAN17", concentration: 17, density: 12.7)
