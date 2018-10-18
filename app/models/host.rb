class Host < ApplicationRecord
  has_many :items;
  has_many :renters, through: :items;
end
