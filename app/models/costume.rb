class Costume < ApplicationRecord
  belongs_to :user
  belongs_to :costume_party

  validates :scare_rating, inclusion: {in: 1..10, message: "must be a number between 1-10"}

  def scary?
    if self.scare_rating > 8
      true
    else
      false
    end
  end
end
