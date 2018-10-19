class User < ApplicationRecord
  has_secure_password
  has_many :costumes
  has_many :costume_parties, through: :costumes

  validates :email, presence: true
  validates :email, uniqueness: true
  validates :password, presence: true

  def create_username
    username = self.email.split("@")
    username[0]
  end
end
