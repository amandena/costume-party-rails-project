class CostumeParty < ApplicationRecord
  belongs_to :user
  has_many :costumes

  def best_costume #method to declare the best costume based on the scare_rating
    self.costumes.each do |costume|

    end
  end
end
