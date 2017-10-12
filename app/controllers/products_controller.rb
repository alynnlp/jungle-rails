class ProductsController < ApplicationController

#show all the products from the @products data
  def index
    @products = Product.all.order(created_at: :desc)
  end


#:id refers to the Product ID ==> only showing 1 specific product
  def show
    @product = Product.find params[:id]
  end

end
