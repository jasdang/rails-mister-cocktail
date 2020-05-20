class Dose < ApplicationRecord
  # validation
  validates :description, presence: true
  validates :ingredient, presence: true
  validates :cocktail, presence: true

  # relationship
  belongs_to :ingredient
  belongs_to :cocktail
end
