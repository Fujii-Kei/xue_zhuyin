class Question < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  
  has_many :question_answers, dependent: :destroy  
  has_many :answers, through: :question_answers

  has_many :question_categories, dependent: :destroy
  has_many :categories, through: :question_categories
  
  validates :body, presence: true
end
