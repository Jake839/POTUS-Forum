# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'open-uri' #for active storage 

puts "Loading Questions..."
Question.destroy_all 
question1 = Question.create(description: "Will Donald Trump be elected president in 2024?", date_string: "Monday, October 2nd, 2023", numerical_date: 1022023)
question2 = Question.create(description: "Who should be Donald Trump's running mate?", date_string: "Tuesday, October 3rd, 2023", numerical_date: 1032023)
question3 = Question.create(description: "Is Joe Biden a good president?", date_string: "Wednesday, October 4th, 2023", numerical_date: 1042023)

puts "Loading Choices..."
Choice.destroy_all 
#Question 1 Choices
choice1 = Choice.create(name: "Yes", votes: 0, bar_color: "#D40C1C", question_id: question1.id)
choice2 = Choice.create(name: "No", votes: 0, bar_color: "#1226BA", question_id: question1.id)
#Question 2 Choices
choice3 = Choice.create(name: "Kari Lake", bar_color: "#16CDDA", votes: 0, question_id: question2.id)
choice4 = Choice.create(name: "Marjorie Taylor Greene", bar_color: "blue", votes: 0, question_id: question2.id)
choice5 = Choice.create(name: "Sarah Huckabee Sanders", bar_color: "orange", votes: 0, question_id: question2.id)
choice6 = Choice.create(name: "Sarah Palin", votes: 0, bar_color: "red", question_id: question2.id)
#Question 3 Choices
choice7 = Choice.create(name: "Yes", votes: 0, bar_color: "#1226BA", question_id: question3.id)
choice8 = Choice.create(name: "No", votes: 0, bar_color: "#D40C1C", question_id: question3.id)



