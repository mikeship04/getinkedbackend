class Artist < ApplicationRecord
    has_many :Giveaways, dependent: :destroy
end
