# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


#RED - #D40C1C"
#BLUE - "#1226BA"

require 'open-uri' #for active storage 
puts "Loading Questions..."
Question.destroy_all 
question1 = Question.create(description: "Who will win the 2024 election?", date_string: "Wednesday, May 29th, 2024", numerical_date: 05292024)


puts "Loading Choices..."
Choice.destroy_all 
#Question 1 Choices
choice1 = Choice.create(name: "Donald Trump", votes: 0, color: "#D40C1C", question_id: question1.id)
choice2 = Choice.create(name: "Joe Biden", votes: 0, color: "#1226BA", question_id: question1.id)
choice3 = Choice.create(name: "Robert F. Kennedy Jr.", votes: 0, color: "#F45F10", question_id: question1.id)
choice4 = Choice.create(name: "Golden the cat", votes: 0, color: "#FFCB1F", question_id: question1.id)