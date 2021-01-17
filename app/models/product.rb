class Product < ApplicationRecord
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
