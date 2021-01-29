class CartedProduct < ApplicationRecord
  belongs_to :user
  belongs_to :product
  belongs_to :order, optional: true #(we set this to optional since order_id won't be filled out right away in the carted_products table)
end
