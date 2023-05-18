class Dish < ApplicationRecord
    has_many :items, dependent: :delete_all
    validates :name, presence: true
end
