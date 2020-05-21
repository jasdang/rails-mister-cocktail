class Ingredient < ApplicationRecord
  # validation
  validates :name, presence: true, uniqueness: true

  # check in is in use before destroying
  before_destroy :in_use?

  # relationship
  has_many :doses
  has_many :cocktails, through: :doses

  private

  def in_use?
    self.doses.each do |dose|
      if dose.cocktail
        :abort
      end
    end
  end
end
