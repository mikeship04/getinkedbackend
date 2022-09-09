class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.string :name
      t.integer :price_in_cents
      t.belongs_to :user, foreign_key: true
      t.belongs_to :giveaway, null: false, foreign_key: true

      t.timestamps
    end
  end
end
