class RestaurantsController < ApplicationController
  before_action :authenticate_user!, only: :search

  def search
    @restaurants = Restaurant.where('name LIKE(?)', "%#{params[:keyword]}%")
  end

  def index
    @restaurants = Restaurant.where('genre LIKE(?)', "%#{params[:keyword]}%")
    # @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end
end
