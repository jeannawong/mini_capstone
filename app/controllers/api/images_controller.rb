class Api::ImagesController < ApplicationController
  def index
    @images = Image.all
    render "index.json.jb"
  end

  def create
    @image = Image.new(
      product_id: params["product_id"],
      url: params["url"],
    )
    @image.save
    render "show.json.jb"
  end

  def update
    @image = Image.find_by(id: params["id"])
    # @image.product_id = params["product_id"] || @image.product_id
    # ^this line of code will allow you to change which product where you want the update image to be!! when you meant it to be the original product associated to the image number (dangerous!)
    @image.url = params["url"] || @image.url

    @image.save
    render "show.json.jb"
  end
end
