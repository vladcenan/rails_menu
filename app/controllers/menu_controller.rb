class MenuController < ApplicationController
  def index
    @time = Time.now
    @search_term = params[:looking_for] || 'meat' #http://10.0.223.4:3000/menu?looking_for=salad
    @menus = Menu.for(@search_term)
  end

  def food
    @food = ['pizza', 'pasta', 'salad']
  end

  def beverages
    @drinks = ['water', 'juice', 'beer']
  end
end
