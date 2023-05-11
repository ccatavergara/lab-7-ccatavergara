class AddDishRefToItem < ActiveRecord::Migration[7.0]
  def change
    add_reference :items, :dish, null: false
  end
end
