class Dose < ApplicationRecord
  # validation
  validates :description, presence: true
  validates :ingredient, presence: true, uniqueness: { scope: :cocktail }
  validates :cocktail, presence: true, uniqueness: { scope: :ingredient }

  # relationship
  belongs_to :ingredient
  belongs_to :cocktail
end
