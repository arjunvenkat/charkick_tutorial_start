# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ExerciseLog.destroy_all
30.times do |count|
  random_num = rand(10)
  if random_num < 3
    category = 'running'
  elsif random_num < 5
    category = 'swimming'
  elsif random_num < 9
    category = 'biking'
  else
    category = 'yoga'
  end
  ExerciseLog.create({
    :created_at => DateTime.now - count.days,
    :category => category,
    :duration => rand(45) + 15
  })
end
puts "There are #{ExerciseLog.count} exercise logs in your databse"
