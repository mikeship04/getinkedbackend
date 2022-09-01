class GiveawaySerializer < ActiveModel::Serializer
  attributes :id, :header, :description, :closing_date, :img_url, :full_details
  has_one :artist
end
