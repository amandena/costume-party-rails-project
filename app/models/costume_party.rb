class CostumeParty < ApplicationRecord
  belongs_to :user
  has_many :costumes

  def best_costume
    self.costumes.best_quality?.name.capitalize
  end
end
