class Item < ApplicationRecord
  belongs_to :host;
  belongs_to :renter, optional: true;
  has_one_attached :image
end
