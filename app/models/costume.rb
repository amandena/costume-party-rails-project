class Costume < ApplicationRecord
  belongs_to :user
  belongs_to :costume_party

  validates :name, :clothing_1, :clothing_2, :accessory_1, :accessory_2, :cost, :scare_rating, :costume_party_id, presence: true
  validates :scare_rating, inclusion: {in: 1..10, message: "must be a number between 1-10"}

  def self.best_quality?
    self.all.max {|a, b| a.cost <=> b.cost}
  end
end
