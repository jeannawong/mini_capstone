class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.json.jb"
  end

  def show
    @product = Product.find_by(id: params["id"])
    render "show.json.jb"
  end

  def create
    @product = Product.new(
      name: params["name"],
      price: params["price"],
      image_url: params["prep_time"],
      description: params["description"],
    )
    @product.save
    render "show.json.jb"
  end

  def update
    @product = Product.find_by(id: params["id"])
    @product.title = params["name"] || @product.title
    @product.chef = params["price"] || @product.chef
    @product.prep_time = params["image_url"] || @product.prep_time
    @product.ingredients = params["description"] || @product.ingredients
    @product.save
    render "show.json.jb"
  end

  def destroy
    product = Product.find_by(id: params["id"])
    product.destroy
    render json: { message: "product successfully destroyed!" }
  end
end
