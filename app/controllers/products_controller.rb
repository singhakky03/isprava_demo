class ProductsController < ApplicationController
  def new
  end

  def create
  	render plain: params[:article].inspect
  end

  def index
  	@products = Product.all
  end

  def edit
  end
end
