class CostumeParty < ApplicationRecord
  belongs_to :user
  has_many :costumes

  validates :name, :time, :date, presence: true

  def best_costume
    self.costumes.best_quality?.name.capitalize
  end
end
