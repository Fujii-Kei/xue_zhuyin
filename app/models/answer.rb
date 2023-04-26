class Answer < ApplicationRecord
  belongs_to :question
  has_many :user_answers, dependent: :destroy
  has_many :users, through: :user_answers
end
