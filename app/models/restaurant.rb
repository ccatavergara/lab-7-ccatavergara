class Restaurant < ApplicationRecord
    has_many :items, dependent: :delete_all
    validates :name, presence: true
    validates :address, presence: true

end
