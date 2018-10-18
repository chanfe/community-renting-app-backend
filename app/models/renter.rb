class Renter < ApplicationRecord
  has_many :items;
  has_many :hosts, through: :items;
end
