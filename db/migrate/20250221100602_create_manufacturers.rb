class CreateManufacturers < ActiveRecord::Migration[8.0]
  def change
    create_table :manufacturers do |t|
      t.string :company
      t.string :region

      t.timestamps
    end
  end
end
