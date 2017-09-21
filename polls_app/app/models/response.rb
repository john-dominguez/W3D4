# == Schema Information
#
# Table name: responses
#
#  id               :integer          not null, primary key
#  user_id          :integer          not null
#  answer_choice_id :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Response < ApplicationRecord
  validates :user_id, :answer_choice_id, presence: true
  validate :not_duplicate_response
  validate :cant_reply_to_authored_poll

  belongs_to :answer_choice,
    class_name: :AnswerChoice,
    foreign_key: :answer_choice_id,
    primary_key: :id

  belongs_to :respondent,
    class_name: :User,
    foreign_key: :user_id,
    primary_key: :id

  has_one :question,
    through: :answer_choice,
    source: :question


  def siblings_responses
    self.question.responses.where.not(id: self.id)
  end

  def respondent_already_answered?
    self.siblings_responses.exists?(user_id: self.user_id)
  end

  def not_duplicate_response
    if respondent_already_answered?
      errors[:user_id] << " already answered this question!"
    end
  end

  def cant_reply_to_authored_poll
    if self.question.poll.user_id == self.id
      errors[:user_id] << "can't take your own polls!"
    end
  end
end
