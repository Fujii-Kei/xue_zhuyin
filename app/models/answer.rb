class Answer < ApplicationRecord
  has_many :user_answers, dependent: :destroy
end
