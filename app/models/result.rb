class Result < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :user_answers, dependent: :destroy
  validates :score, presence: true
end
