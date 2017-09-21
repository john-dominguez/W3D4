# == Schema Information
#
# Table name: answer_choices
#
#  id            :integer          not null, primary key
#  question_id   :integer          not null
#  answer_choice :text             not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class AnswerChoice < ApplicationRecord
  validates :question_id, presence: true

  belongs_to :question,
    class_name: :Question,
    foreign_key: :question_id,
    primary_key: :id

  has_many :responses,
    class_name: :Response,
    foreign_key: :answer_choice_id,
    primary_key: :id
end
