class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :description, length: { minimum: 2, maximum: 500 }

  def is_discounted?
    price <= 10
  end

  def tax
    price * 0.09
    # if you define a new variable, you have to RETURN it in the code
  end

  def total
    price + tax
  end
end
