class Question < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :answers, dependent: :destroy
  belongs_to :category
  
  mount_uploader :question_audio, QuestionAudioUploader

  accepts_nested_attributes_for :answers, allow_destroy: true
  
  with_options presence: true do
    validates :title
    validates :body
    validates :category_id
  end
end
