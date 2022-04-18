class PagesController < ApplicationController
    def home
        @movies = Movie.order(created_at: :desc).limit(5)
        best_rated_movies = Review.group(:movie_id)
                        .average(:rate)
                        .sort_by { |movie, avg_rate| avg_rate }
                        .reverse
                        .map { |result| result[0] }
        @best_rated_movies = Movie.where(id: best_rated_movies).limit(5)
    end
end
