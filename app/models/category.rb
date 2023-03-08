class Category < ApplicationRecord
  has_many :question_categories, dependent: :destroy
  has_many :levels
  has_many :results, dependent: :destroy
end
