class AddYoutubeToArtists < ActiveRecord::Migration[7.0]
  def change
    add_column :artists, :youtube, :string
  end
end
