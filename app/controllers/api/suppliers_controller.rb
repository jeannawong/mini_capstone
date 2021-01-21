class Api::SuppliersController < ApplicationController
  def index
    # @suppliers = Supplier.where("name ILIKE '%light%'")
    # @suppliers = Supplier.all.order(:price)
    # @suppliers = Supplier.all.order(:price => :desc)

    @suppliers = Supplier.all

    if params[:search]
      @suppliers = @suppliers.where("name ILIKE ?", "%#{params[:search]}%")
    end

    if params[:discount] == "true"
      @suppliers = @suppliers.where("price < ?", 10)
    end

    if params[:sort] == "price" && params[:sort_order] == "desc"
      @suppliers = @suppliers.order(:price => :desc)
    elsif params[:sort] == "price" && params[:sort_order] == "asc"
      @suppliers = @suppliers.order(price: :asc)
    else
      @suppliers = @suppliers.order(:id => :asc)
    end

    render "index.json.jb"
  end

  def show
    @supplier = Supplier.find_by(id: params["id"])
    render "show.json.jb"
  end

  def create
    @supplier = Supplier.new(
      name: params["name"],
      email: params["email"],
      phone: params["phone"],
      supplier_id: params["supplier_id"],
    )
    if @supplier.save
      render "show.json.jb"
    else
      render json: { errors: @supplier.errors.full_messages, status: 422 }
    end
  end

  def update
    @supplier = Supplier.find_by(id: params["id"])
    @supplier.name = params["name"] || @supplier.name
    @supplier.email = params["email"] || @supplier.email
    @supplier.phone = params["phone"] || @supplier.phone
    @supplier.supplier_id = params["supplier_id"] || @supplier.supplier_id

    if @supplier.save
      render "show.json.jb"
    else
      render json: { errors: @supplier.errors.full_messages, status: 422 }
    end
  end

  def destroy
    supplier = Supplier.find_by(id: params["id"])
    supplier.destroy
    render json: { message: "supplier successfully destroyed!" }
  end
end
