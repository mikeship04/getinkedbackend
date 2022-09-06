class UserSerializer < ActiveModel::Serializer
    attributes :username, :email, :id, :admin
end