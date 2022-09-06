class UserSerializer < ActiveModel::Serializer
    attributes :username, :email, :id, :admin
    has_many :Tickets
end