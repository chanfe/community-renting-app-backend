class Item < ApplicationRecord
  belongs_to :host;
  belongs_to :renter;
end
