class StoreController < ApplicationController
  def index
    @products = Product.all
    @counter = count
  end

  private 

  def count
    session[:counter] ||= 0
    session[:counter] += 1
    session[:counter]
  end
end
