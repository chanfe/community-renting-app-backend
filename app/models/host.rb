class Host < ApplicationRecord
  has_many :items;
  has_many :renters, through: :items;
  validates :name, :username, :password, presence: true
  validates :username, uniqueness: true
  has_secure_password

  def authenticate(plaintext_password)
    if BCrypt::Password.new(self.password_digest) == plaintext_password
      self
    else
      false
    end
  end
end
