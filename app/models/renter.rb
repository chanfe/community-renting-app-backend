class Renter < ApplicationRecord
  has_many :items;
  has_many :hosts, through: :items;
  validates :name, :username, presence: true
  validates :username, uniqueness: true
end
