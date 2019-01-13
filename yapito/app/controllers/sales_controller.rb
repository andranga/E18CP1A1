class SalesController < ApplicationController
  #before_action :set_sale, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_product, only: [:create]

  def index
    @sales = Sale.all
  end

  def new
  	@sale = Sale.new
  end

  def show
    #redirect_to root_path
  end

  # POST /histories
  # POST /histories.json
  def create
    #@sale = Sale.new(sale_params)
    @sale = Sale.new
    @sale.buyer_id = current_user.id
    @sale.product_id = @product.id
    
    @sale.save
    render :show
    #respond_to do |format|
    #  if @sale.save
    #    format.html { redirect_to @sale, notice: 'Product was successfully created.' }
    #    format.json { render :show, status: :created, location: @sale }
    #  else
    #    format.html { render :new, notice: 'Product not created.' }
    #    format.json { render json: @sale.errors, status: :unprocessable_entity }
    #  end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sale
      @sale = Sale.find(params[:id])
    end
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    #def sale_params
    #   params.require(:sale).permit(:buyer_id, :product_id)
    #end
#end

