class Giveaway < ApplicationRecord
  belongs_to :artist
  has_many :tickets, dependent: :destroy
end
