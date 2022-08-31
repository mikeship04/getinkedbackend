class GiveawaySerializer < ActiveModel::Serializer
  attributes :id, :header, :descirption, :closing_date, :img_url, :full_details
  has_one :artist
end
