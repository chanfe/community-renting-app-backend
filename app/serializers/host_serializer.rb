class HostSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :password_digest
  has_many :items
end
