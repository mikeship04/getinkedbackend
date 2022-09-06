class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :bio, :img_url, :instagram, :twitter, :tiktok, :facebook, :name, :youtube
  has_many :Giveaways
end
