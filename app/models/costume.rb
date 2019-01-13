class Costume < ApplicationRecord
  belongs_to :user
  belongs_to :costume_party

  def scary?
    if self.scare_rating > 8
      true
    else
      false
    end
  end
end
