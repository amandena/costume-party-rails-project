class Costume < ApplicationRecord
  has_many :users
  belongs_to :costume_party

  def scary?
    if self.scare_rating > 5
      "OH MY GHOST!"
    else
      "Better luck next year, kid."
    end
  end
end
