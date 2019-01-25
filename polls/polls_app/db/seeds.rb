# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do

  User.destroy_all

  mariana = User.create!(user_name: "mariana")
  drew = User.create!(user_name: "drew")
  mike = User.create!(user_name: "mike")
  jasmine = User.create!(user_name: "jasmine")
  john = User.create!(user_name: "john")
  squiggles = User.create!(user_name: "squiggles")
  jory = User.create!(user_name: "jory")

  Poll.destroy_all

  poll1 = Poll.create!(author_id: mariana.id, title: "How many courses?")
  poll2 = Poll.create!(author_id: mariana.id, title: "App-Academy")
  poll3 = Poll.create!(author_id: drew.id, title: "What's the best movie today")
  poll4 = Poll.create!(author_id: squiggles.id, title: "Favorite Foods")
  poll5 = Poll.create!(author_id: jory.id, title: "Favorite Books")

  Question.destroy_all

  question1 = Question.create!(poll_id: poll1.id, text: "How many courses are you taking?")
  question2 = Question.create!(poll_id: poll2.id, text: "What is the weather today?")
  question3 = Question.create!(poll_id: poll2.id, text: "Which module is your favorite?")
  question4 = Question.create!(poll_id: poll2.id, text: "Who is your favorite instructor?")
  question5 = Question.create!(poll_id: poll3.id, text: "How was the lecture?")
  question6 = Question.create!(poll_id: poll4.id, text: "What is your favorite fruit?")
  question7 = Question.create!(poll_id: poll4.id, text: "What is your favorite candy?")
  question8 = Question.create!(poll_id: poll4.id, text: "What is your favorite dinner?")

  AnswerChoice.destroy_all

  answer1 = AnswerChoice.create!(question_id: question1.id, text: "0")
  answer2 = AnswerChoice.create!(question_id: question1.id, text: "1-2")
  answer3 = AnswerChoice.create!(question_id: question1.id, text: "2+")
  answer4 = AnswerChoice.create!(question_id: question2.id, text: "nice")
  answer5 = AnswerChoice.create!(question_id: question2.id, text: "rainy")
  answer6 = AnswerChoice.create!(question_id: question2.id, text: "snowing")
  answer7 = AnswerChoice.create!(question_id: question3.id, text: "sql")
  answer8 = AnswerChoice.create!(question_id: question3.id, text: "ruby")
  answer9 = AnswerChoice.create!(question_id: question3.id, text: "rails")
  answer10 = AnswerChoice.create!(question_id: question4.id, text: "Andy")
  answer11 = AnswerChoice.create!(question_id: question4.id, text: "Cynthia")
  answer12 = AnswerChoice.create!(question_id: question4.id, text: "Ronil")
  answer13 = AnswerChoice.create!(question_id: question5.id, text: "great")
  answer14 = AnswerChoice.create!(question_id: question5.id, text: "did not understand anything")
  answer15 = AnswerChoice.create!(question_id: question5.id, text: "fell asleep")
 
  Response.destroy_all

  response1 = Response.create!(answer_choice_id: answer1.id, user_id: mariana.id)
  response2 = Response.create!(answer_choice_id: answer1.id, user_id: drew.id)
  response3 = Response.create!(answer_choice_id: answer2.id, user_id: jory.id)
  response4 = Response.create!(answer_choice_id: answer4.id, user_id: mariana.id)
  response5 = Response.create!(answer_choice_id: answer5.id, user_id: drew.id)
  response6 = Response.create!(answer_choice_id: answer7.id, user_id: drew.id)
  response7 = Response.create!(answer_choice_id: answer8.id, user_id: mariana.id)
  response8 = Response.create!(answer_choice_id: answer10.id, user_id: drew.id)
  response9 = Response.create!(answer_choice_id: answer10.id, user_id: mariana.id)
end