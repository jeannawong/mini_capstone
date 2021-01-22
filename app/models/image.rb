class Image < ApplicationRecord
  # belongs_to :product  <-- (another way to write the method below)
  def product
    Product.find_by(id: product_id)
  end
end
