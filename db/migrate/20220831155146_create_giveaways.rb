class CreateGiveaways < ActiveRecord::Migration[7.0]
  def change
    create_table :giveaways do |t|
      t.string :header
      t.string :descirption
      t.integer :closing_date
      t.string :img_url
      t.text :full_details
      t.belongs_to :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
