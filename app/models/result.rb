class Result < ApplicationRecord
  belongs_to :user
  belongs_to :category
  belongs_to :level
  has_many :user_answers, through: :questions
  has_many :questions, through: :results_questions
  has_many :results_questions
  validates :score, presence: true
end
