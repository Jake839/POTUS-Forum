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
question1 = Question.create(description: "Who will win the 2024 election?", date_string: "Thursday, May 30th, 2024", numerical_date: 5302024)
question2 = Question.create(description: "Donald Trump is a convicted felon. He was found guilty on 34 counts of falsifying business records in the first degree. Was his trial rigged?", date_string: "Friday, May 31st, 2024", numerical_date: 5312024)
question3 = Question.create(description: "Will Donald Trump go to jail?", date_string: "Sunday, June 2nd, 2024", numerical_date: 6022024) 
question4 = Question.create(description: "Should Joe Biden take a cognitive test?", date_string: "Monday, June 17th, 2024", numerical_date: 6172024) 

puts "Loading Choices..."
Choice.destroy_all 
#Question 1 Choices
choice1 = Choice.create(name: "Donald Trump", votes: 0, color: "#D40C1C", question_id: question1.id)
choice2 = Choice.create(name: "Joe Biden", votes: 0, color: "#1226BA", question_id: question1.id)
choice3 = Choice.create(name: "Robert F. Kennedy Jr.", votes: 0, color: "#F45F10", question_id: question1.id)
choice4 = Choice.create(name: "Golden the cat", votes: 0, color: "#F7BD08", question_id: question1.id)
#Question 2 Choices
choice5 = Choice.create(name: "Yes", votes: 0, color: "#D40C1C", question_id: question2.id)
choice6 = Choice.create(name: "No", votes: 0, color: "#1226BA", question_id: question2.id)
#Question 3 Choices
choice7 = Choice.create(name: "No", votes: 0, color: "#D40C1C", question_id: question3.id)
choice8 = Choice.create(name: "Yes", votes: 0, color: "#1226BA", question_id: question3.id)
#Question 4 Choices
choice9 = Choice.create(name: "Yes", votes: 0, color: "#D40C1C", question_id: question4.id)
choice10 = Choice.create(name: "No", votes: 0, color: "#1226BA", question_id: question4.id)
