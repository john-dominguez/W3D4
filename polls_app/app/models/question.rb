# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  poll_id    :integer          not null
#  question   :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Question < ApplicationRecord

  validates :question, presence: true, uniqueness: true
  validates :poll_id, presence: true

  has_many :answer_choices,
    class_name: :AnswerChoice,
    foreign_key: :question_id,
    primary_key: :id

  belongs_to :poll,
    class_name: :Poll,
    foreign_key: :poll_id,
    primary_key: :id

  has_many :responses,
    through: :answer_choices,
    source: :responses

  def results
    choices = self.answer_choices
    result = {}

    choices.each do |choice|
      result[choice.answer_choice] = choice.responses.count
    end

    result
  end

   def result2
    choices = self.answer_choices.includes(:responses)

    result = {}
    choices.each do |choice|
      result[choice.answer_choice] = choice.responses.count
    end

    result
   end
end
