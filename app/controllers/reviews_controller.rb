class ReviewsController < ApplicationController

  before_action :authenticate_user!, only: :new

  def index
    @reviews = Review.order("created_at DESC")
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
    3.times { @review.photos.build }
  end

  def create
    Review.create(review_params)
    redirect_to root_path, notice: '投稿が成功しました!'
  end

  def destroy
    review = Review.find(params[:id])
      if review.user_id == current_user.id
        review.destroy
      end
    redirect_to root_path, notice: '投稿を削除しました。'
  end

  def edit
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.find(params[:id])
  end

  def update
    review = Review.find(params[:id])
      if review.user_id == current_user.id
        review.update(review_params)
      end
    redirect_to root_path, notice: '更新が完了しました。'
  end

  private
  def review_params
    params.require(:review).permit(:lunch_cost, :dinner_cost, :rate, :text, :guests, :atmosphere, :menu, photos_attributes: [:image]).merge(restaurant_id: params[:restaurant_id],user_id: current_user.id)
  end
end
