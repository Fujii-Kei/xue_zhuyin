class Question < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :answers, dependent: :destroy
  belongs_to :category
  
  validates :body, presence: true
end
