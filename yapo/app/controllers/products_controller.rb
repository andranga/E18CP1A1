class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  
  def index
    @products = Product.all
  end

  def new
  	@product = Product.new
  end

  def show
    redirect_to root_path
  end

  # POST /histories
  # POST /histories.json
  def create
    @product = Product.new(product_params)
    @product.owner = current_user
    @product.buyer = current_user
    respond_to do |format|
      if @product.save
        format.html { redirect_to products_path, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new, notice: 'Product not created.' }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @product.buyer = current_user
  end

  def update
    @product.buyer = current_user
    if @product.update_attributes(product_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :description, :price, :owner_id, :buyer_id)
    end
end




