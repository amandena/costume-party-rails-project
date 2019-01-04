class Costume < ApplicationRecord
  belongs_to :user
  belongs_to :costume_party

  def scary?
    if self.scare_rating > 7
      "OH MY GHOST!"
    else
      "Better luck next year, kid."
    end
  end
end
