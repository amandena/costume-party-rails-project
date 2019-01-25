class Costume < ApplicationRecord
  belongs_to :user
  belongs_to :costume_party

  validates :scare_rating, inclusion: {in: 1..10, message: "must be a number between 1-10"}

  def self.best_quality?
    self.all.max {|a, b| a.cost <=> b.cost}
  end
end
