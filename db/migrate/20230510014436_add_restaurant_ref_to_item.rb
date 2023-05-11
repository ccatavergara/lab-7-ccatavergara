class AddRestaurantRefToItem < ActiveRecord::Migration[7.0]
  def change
    add_reference :items, :restaurant, null: false
  end
end
