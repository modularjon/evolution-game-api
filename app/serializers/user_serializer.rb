#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :games
end
