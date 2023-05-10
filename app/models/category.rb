class Category < ApplicationRecord
  has_many :questions, dependent: :destroy
  has_many :results, dependent: :destroy

  mount_uploader :category_image, CategoryUploader
end
