class AddAttributesToCars < ActiveRecord::Migration[8.0]
  def change
    add_column :cars, :model, :string
  end
end
