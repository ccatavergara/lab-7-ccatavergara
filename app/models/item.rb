class Item < ApplicationRecord

    validates :name, presence: true
    validates :price, numericality: { greater_than: 0 }
    validates :callories, numericality: { greater_than: 0 }
end
