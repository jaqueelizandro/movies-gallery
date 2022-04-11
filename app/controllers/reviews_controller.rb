class ReviewsController < ApplicationController
  before_action :get_movie
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  
  def index
  end

  def new
  end

  def create
    @review = @movie.reviews.create(review_params)
  end

  def edit
  end

  def show
  end

  private
  def review_params
    params.require(:review).permit(:rate, :review, :user_id, :movie_id)
  end

  def get_movie
    @movie = Movie.find(params[:movie_id])
  end

end
