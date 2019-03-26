class Api::V1::ReviewsController < ApplicationController
  before_action :find_review, only: [:update]

  # def index
  #   @reviews = Review.all
  #   render json: @reviews
  # end

  def create
    @review = Review.new(review_params)
    if @review.save
      render json: @review, status: :created
    else
      render json: { errors: @review.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    if @review.update(review_params)
      render json: @review, status: :accepted
    else
      render json: { errors: @review.errors.full_messages }, status: :unprocessible_entity
    end
  end

  # def show
  #   render json: @review
  # end


  private

  def review_params
    params.permit(:rating, :content, :gif_id, :user_id)
  end

  def find_review
    @review = Review.find(params[:id])
  end
end
