class Costume < ApplicationRecord
  has_many :users
  has_many :costume_parties, through: :users

  def scary?
    if self.scare_rating > 5
      "OH MY GHOST!"
    else
      "Better luck next year, kid."
    end
  end
end
