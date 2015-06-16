class ReviewsController < ApplicationController

  def review_params
    params.require(:review).permit(:thoughts, :rating)
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @restaurant.reviews.create(review_params)
  end

end
