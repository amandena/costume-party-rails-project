class User < ApplicationRecord
  has_secure_password
  has_many :costumes
  has_many :costume_parties, through: :costumes

  validates :email, :password, presence: true
  validates :email, uniqueness: { message: "Email already in use, please use another email or sign in"}

  def create_username
    username = self.email.split("@")
    username[0].capitalize
  end
end
