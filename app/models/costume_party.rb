class CostumeParty < ApplicationRecord
  belongs_to :user
  has_many :costumes

  def best_costume
    self.costumes.find do |costume|
      costume.scary?
    end.name.capitalize
  end
end
