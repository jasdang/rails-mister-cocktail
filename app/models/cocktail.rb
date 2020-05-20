class Cocktail < ApplicationRecord
  # validation
  validates :name, presence: true, uniqueness: true

  #relationship
  has_many :doses
  has_many :ingredients, through: :doses
end
