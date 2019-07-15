class ProductsController < ApplicationController

    def index
        @product = Product.new
    end 

    def create
        @product = Product.create(product_params)
        current_cart << @product
        redirect_to products_path
    end

    private

    def product_params
        params.permit(:product)
    end 

    def current_cart
        session[:cart] ||= []
    end

end
  