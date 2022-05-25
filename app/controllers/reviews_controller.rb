class ReviewsController < ApplicationController

  def index
  end

  def create
    @restaurant = Restaurant.find(params[:id])
    @review = @restaurant.reviews.create(review_params)
    redirect_to restaurant_path(@restaurant)
  end

  private
  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
