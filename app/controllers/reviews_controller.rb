class ReviewsController < ApplicationController
  def create
    @restaurant = restaurant.find(params[:restaurant.id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    @review.save
    redirect_to restaurant_path(@restaurant)
  end

  private
  def reviews_params
    params.require(:review).permit(:content, :rating)
  end
end
