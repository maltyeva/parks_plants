class Plant < ApplicationRecord
  belongs_to :garden
  CATEGORIES = %w(flower cactus herb fern tree)

  validates :category, :height, :flower_number, presence: true
  validates :category, inclusion: {in: CATEGORIES }
end
