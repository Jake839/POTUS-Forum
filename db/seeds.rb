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
question1 = Question.create(description: "Will Donald Trump be elected president in 2024?", date_string: "Monday, October 2nd, 2023", numerical_date: 10022023)
question2 = Question.create(description: "Who should be Donald Trump's running mate?", date_string: "Tuesday, October 3rd, 2023", numerical_date: 10032023)
question3 = Question.create(description: "Is Joe Biden a good president?", date_string: "Wednesday, October 4th, 2023", numerical_date: 10042023)
question4 = Question.create(description: "Should Joe Biden resign?", date_string: "Thursday, October 5th, 2023", numerical_date: 10052023)
question5 = Question.create(description: "Do the Presidents today follow the Constitution?", date_string: "Friday, October 6th, 2023", numerical_date: 10062023)
question6 = Question.create(description: "Will Donald Trump be convicted in court?", date_string: "Friday, October 7th, 2023", numerical_date: 10072023)

question7 = Question.create(description: "Is Joe Biden failing?", date_string: "Friday, October 8th, 2023", numerical_date: 10082023)

if question7.persisted?
  puts "New question added. To view it, visit the following URL:"
  puts "http://localhost:3000?new_question_id=#{question7.id}" if Rails.env.development?
  puts "https://your-production-url.com?new_question_id=#{question7.id}" if Rails.env.production?
end


puts "Loading Choices..."

Choice.destroy_all 
#Question 1 Choices
choice1 = Choice.create(name: "Yes", votes: 0, color: "#D40C1C", question_id: question1.id)
choice2 = Choice.create(name: "No", votes: 0, color: "#1226BA", question_id: question1.id)
#Question 2 Choices
choice3 = Choice.create(name: "Kari Lake", color: "#16CDDA", votes: 0, question_id: question2.id)
choice4 = Choice.create(name: "Marjorie Taylor Greene", color: "blue", votes: 0, question_id: question2.id)
choice5 = Choice.create(name: "Sarah Huckabee Sanders", color: "orange", votes: 0, question_id: question2.id)
choice6 = Choice.create(name: "Sarah Palin", votes: 0, color: "red", question_id: question2.id)
#Question 3 Choices
choice7 = Choice.create(name: "Yes", votes: 0, color: "#1226BA", question_id: question3.id)
choice8 = Choice.create(name: "No", votes: 0, color: "#D40C1C", question_id: question3.id)
#Question 4 Choices
choice9 = Choice.create(name: "Yes", votes: 0, color: "#D40C1C", question_id: question4.id)
choice10 = Choice.create(name: "No", votes: 0, color: "#1226BA", question_id: question4.id)
#Question 5 Choices
choice11 = Choice.create(name: "Yes", votes: 0, color: "#D40C1C", question_id: question5.id)
choice12 = Choice.create(name: "No", votes: 0, color: "#1226BA", question_id: question5.id)
#Question 6 Choices
choice13 = Choice.create(name: "Yes", votes: 0, color: "#1226BA", question_id: question6.id)
choice14 = Choice.create(name: "No", votes: 0, color: "#D40C1C", question_id: question6.id)

#Question 7 Choices
choice14 = Choice.create(name: "Yes", votes: 0, color: "#D40C1C", question_id: question7.id)
choice15 = Choice.create(name: "No", votes: 0, color: "#1226BA", question_id: question7.id)



