class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :user_type
  has_many :songs
end
