class ReviewsController < ApplicationController
  before_action :check_for_login
  before_action :find_movie
  before_action :find_review, :only => [:edit, :update, :destroy]
  
  def index
  end

  def new
    @review = @movie.reviews.build
  end

  def create
    review = @movie.reviews.create(review_params)
    @current_user.reviews << review
    redirect_to movie_path(@movie.imdbid)
  end

  def edit
  end

  def update
    @review.update(review_params)
    redirect_to movie_path(@movie.imdbid)
  end

  def show
  end

  def destroy
    @review.destroy
    redirect_to movie_path(@movie.imdbid)
  end

  private
  def review_params
    params.require(:review).permit(:rate, :review, :user_id, :movie_id)
  end

  def find_movie
    @movie = Movie.find(params[:movie_id])
  end

  def find_review
    @review = @current_user.reviews.find(params[:id])
  end
end
