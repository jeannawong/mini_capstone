class Supplier < ApplicationRecord
  def products
    #look in products table and look for all products with a supplier_id that matches Supplier table id.
    Product.where(supplier_id: id)
  end

  #OR has_many :products
end
