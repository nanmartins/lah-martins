class Category < ApplicationRecord
  has_one_attached :photo

  validates :title, uniqueness: true, presence: true
end
