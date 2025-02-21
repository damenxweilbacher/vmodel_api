class Car < ApplicationRecord
  validates :model, presence :true
  validates :prod_year, numericality {greater_than_or_equal_to: 2025}

  belongs_to :manufacturer
end
