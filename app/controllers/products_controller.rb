class ProductsController < ApplicationController
  def index
    redirect_to new_user_session_path unless user_signed_in?
    @products = Product.all
  end
end
