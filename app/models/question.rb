class Question < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :answers, dependent: :destroy
  belongs_to :category

  accepts_nested_attributes_for :answers, allow_destroy: true
  
  with_options presence: true do
    validates :title
    validates :body
    validates :category_id
    validates :answers
  end
end
