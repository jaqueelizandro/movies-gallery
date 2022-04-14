class PagesController < ApplicationController
    def home
        @movies = Movie.order(created_at: :desc).limit(5)
        # @reviews = Review.all.map(&:movie_id).tally
    end
end
