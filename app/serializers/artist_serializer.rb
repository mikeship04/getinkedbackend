class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :bio, :img_url, :instagram, :twitter, :tiktok, :facebook
end