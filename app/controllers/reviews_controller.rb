class ReviewsController < ApplicationController
  
  def index
  end

  def new
    @movie = Movie.find params[:movie_id]
    @review = @movie.reviews.build
  end

  def create
    movie = Movie.find params[:movie_id]
    movie.reviews.create(review_params)
    redirect_to movie_path(movie.imdbid)
  end

  def edit
    @movie = Movie.find params[:movie_id]
    @review = Review.find params[:id]
  end

  def update
    movie = Movie.find params[:movie_id]
    review = Review.find params[:id]
    review.update(review_params)
    redirect_to movie_path(movie.imdbid)
  end

  def show
  end

  private
  def review_params
    params.require(:review).permit(:rate, :review, :user_id, :movie_id)
  end
end
