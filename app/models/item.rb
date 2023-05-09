class Item < ApplicationRecord
    belongs_to :restaurant

    
    validates :name, presence: true
    validates :price, numericality: { greater_than: 0 }
    validates :callories, numericality: { greater_than: 0 }
end
