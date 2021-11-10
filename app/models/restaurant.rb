class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :category, presence: true
  validates :name, presence: true
  validates :address, presence: true
  validates :category, acceptance: { accept: ["chinese", "italian", "japanese", "french", "belgian"] }
end
