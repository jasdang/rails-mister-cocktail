class Ingredient < ApplicationRecord
  # validation
  validates :name, presence: true, uniqueness: true

  #relationship
  has_many :doses
  has_many :cocktails, through: :doses
end
