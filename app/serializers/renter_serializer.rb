class RenterSerializer < ActiveModel::Serializer
  attributes :id, :name, :username
  has_many :items
end
