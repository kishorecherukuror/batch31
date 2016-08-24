class ProductController < ApplicationController
  def create
  	@product = Product.new
  end

  def show
  	@product = Product.new(show_product)

  	if @product.save
  		redirect_to product_index_path
    else
      render "create"
  	end
  end

  def display
    @product = Product.find(params[:id])

  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    
    if @product.update(show_product)
      redirect_to product_index_path
    else
      render "edit"
    end
  end

  def delete
    @product = Product.find(params[:id])
    if @product.destroy
      redirect_to product_index_path
    end
  end

  def index
    @product = Product.all
  end

private

	def show_product
		params.require(:product).permit(:sku, :name, :quantity, :price, :totalprice)
	end  
end
