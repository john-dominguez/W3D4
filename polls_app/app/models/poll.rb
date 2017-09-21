# == Schema Information
#
# Table name: polls
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  title      :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Poll < ApplicationRecord
  validates :user_id, presence: true

  belongs_to :author,
    class_name: :User,
    foreign_key: :user_id,
    primary_key: :id

  has_many :questions,
    class_name: :Question,
    foreign_key: :poll_id,
    primary_key: :id

end
