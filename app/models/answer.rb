class Answer < ApplicationRecord
  has_many :question_answers, dependent: :destroy  
  has_many :questions, through: :question_answers
end
