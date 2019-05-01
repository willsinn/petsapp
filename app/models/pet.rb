class Pet < ApplicationRecord
  belongs_to :owner
  validates :name, presence: true
  validate :validate_species

  def validate_species
    array = ["cat", "bird", "dog", "fish"]
    if array.include?(self.species) == false
      errors.add(:species, "is this even a real pet?")
    end

  end
end
# validates :species, inclusion: {in: ["cat", "bird", "dog", "fish"]}
