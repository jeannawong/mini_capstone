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

  def supplier
    #look at the supplier that sells this product
    Supplier.find_by(id: supplier_id)
  end

  #OR belongs_to :supplier

  def images
    #look in images table and look for all images with a product_id that matches Image table id.
    Image.where(product_id: id)
  end

  #OR has_many :images

  has_many :orders
end
