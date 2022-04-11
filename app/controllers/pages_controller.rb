class PagesController < ApplicationController
    def home
        @movies = Movie.order(created_at: :desc).limit(5)
    end
end
