class User < ApplicationRecord
  authenticates_with_sorcery!
  has_many :bookmarks, dependent: :destroy
  has_many :bookmark_questions, through: :bookmarks, source: :question
  has_many :results, dependent: :destroy
  has_many :user_answers, dependent: :destroy
  has_many :answers, through: :user_answers
  validates :name, presence: true

  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  validates :email, uniqueness: true, presence: true
  enum role: { general: 0, admin: 1 }

  mount_uploader :avatar, AvatarUploader

  def bookmark(question)
    bookmark_questions << question
  end

  def unbookmark(question)
    bookmark_questions.destroy(question)
  end

  def bookmark?(question)
    bookmark_questions.include?(question)
  end
end
