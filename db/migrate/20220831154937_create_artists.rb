class CreateArtists < ActiveRecord::Migration[7.0]
  def change
    create_table :artists do |t|
      t.text :bio
      t.string :img_url
      t.string :instagram
      t.string :twitter
      t.string :tiktok
      t.string :facebook

      t.timestamps
    end
  end
end
