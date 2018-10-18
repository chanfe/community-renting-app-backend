class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :host_id, :renter_id, :cost, :discription
end
