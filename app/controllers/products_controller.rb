class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
 
  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    product = product.find(params[:id])
    product.destroy
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    product.update(product_params)
  end

  private

  def product_params
    params.require(:product).permit(:name, :youtube_url)
  end
end
