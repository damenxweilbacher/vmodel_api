class AddYearToCars < ActiveRecord::Migration[8.0]
  def change
    add_column :cars, :prod_year, :integer
  end
end
