class Owner < ApplicationRecord
  has_many :pets
  def full_name
    "#{self.first_name} #{self.last_name}"
  end
  def self.owner_pets
    Owner.select do |owner|
      owner.pets.count >= 1
    end
  end
end
