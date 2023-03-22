class Category < ApplicationRecord
  has_many :question_categories, dependent: :destroy
  has_many :questions, through: :question_categories

  has_many :levels
  has_many :results, dependent: :destroy
end
