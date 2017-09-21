# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
jon    = User.create!({ name: "Jon Snow" })
tyrion = User.create!({ name: "Tyrion Lanister"})
ned    = User.create!({ name: "Ned Stark"})
dany   = User.create!({ name: "Dynaris Targarrian"})
pod    = User.create!({ name: "Podrick Unknown"})
theon  = User.create!({ name: "Theon Greyjoy"})

Poll.destroy_all
p1 = Poll.create!({ user_id: jon.id, title: "Walkers" })
p2 = Poll.create!({ user_id: tyrion.id, title: "North"})
p3 = Poll.create!({ user_id: ned.id, title: "Most hated"})
p4 = Poll.create!({ user_id: ned.id, title: "Castle"})
p5 = Poll.create!({ user_id: dany.id, title: "direwolf"})

Question.destroy_all
q1 = Question.create!({ poll_id: p1.id, question: "How many white walkers?"})
q2 = Question.create!({ poll_id: p2.id, question: "Who is king of the north?"})
q3 = Question.create!({ poll_id: p3.id, question: "Who loves Joffrey?"})
q4 = Question.create!({ poll_id: p4.id, question: "Which castle?"})
q5 = Question.create!({ poll_id: p5.id, question: "What is the best direwolf name?"})
q6 = Question.create!({ poll_id: p2.id, question: "Which is a house of the north?"})

AnswerChoice.destroy_all
ac1 = AnswerChoice.create!({question_id: q1.id, answer_choice: "1"})
ac2 = AnswerChoice.create!({question_id: q1.id, answer_choice: "10"})
ac3 = AnswerChoice.create!({question_id: q1.id, answer_choice: "1000000000000"})
ac4 = AnswerChoice.create!({question_id: q2.id, answer_choice: "Jon Snow"})
ac5 = AnswerChoice.create!({question_id: q2.id, answer_choice: "Dynaris Targarrian"})
# 5
ac6 = AnswerChoice.create!({question_id: q2.id, answer_choice: "Robert Baratheon"})
ac7 = AnswerChoice.create!({question_id: q3.id, answer_choice: "Cerci Lanister"})
ac8 = AnswerChoice.create!({question_id: q3.id, answer_choice: "Jamie Lanister"})
ac9 = AnswerChoice.create!({question_id: q3.id, answer_choice: "Tyrion Lanister"})
ac10 = AnswerChoice.create!({question_id: q3.id, answer_choice: "Ned Stark"})
#
ac11 = AnswerChoice.create!({question_id: q4.id, answer_choice: "Winterfell"})
ac12 = AnswerChoice.create!({question_id: q4.id, answer_choice: "Harrenhal"})
ac13 = AnswerChoice.create!({question_id: q4.id, answer_choice: "Dragonstone"})
ac14 = AnswerChoice.create!({question_id: q4.id, answer_choice: "Casterly Rock"})
ac15 = AnswerChoice.create!({question_id: q4.id, answer_choice: "The Eyrie"})
#
ac16 = AnswerChoice.create!({question_id: q5.id, answer_choice: "Ghost"})
ac17 = AnswerChoice.create!({question_id: q5.id, answer_choice: "Nymeria"})
ac18 = AnswerChoice.create!({question_id: q5.id, answer_choice: "Summer"})
ac19 = AnswerChoice.create!({question_id: q5.id, answer_choice: "Shaggydog"})
ac20 = AnswerChoice.create!({question_id: q5.id, answer_choice: "Lady"})
#
ac21 = AnswerChoice.create!({question_id: q6.id, answer_choice: "Stark"})
ac22 = AnswerChoice.create!({question_id: q6.id, answer_choice: "Lanister"})
ac23 = AnswerChoice.create!({question_id: q6.id, answer_choice: "Greyjoy"})
ac24 = AnswerChoice.create!({question_id: q6.id, answer_choice: "Martell"})

Response.destroy_all
r1 = Response.create!({user_id: tyrion.id, answer_choice_id: ac2.id})
r2 = Response.create!({user_id: dany.id, answer_choice_id: ac4.id})
r3 = Response.create!({user_id: ned.id, answer_choice_id: ac22.id})
r4 = Response.create!({user_id: tyrion.id, answer_choice_id: ac8.id})
r5 = Response.create!({user_id: ned.id, answer_choice_id: ac12.id})
r6 = Response.create!({user_id: dany.id, answer_choice_id: ac19.id})
