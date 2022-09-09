class TicketSerializer < ActiveModel::Serializer
  attributes :id, :name, :price_in_cents
  has_one :user
  has_one :giveaway
end
