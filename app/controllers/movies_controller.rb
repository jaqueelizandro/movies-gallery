require 'net/http'

class MoviesController < ApplicationController
  def index
    search = ERB::Util.url_encode(params[:search])
    uri = URI("https://imdb-api.com/en/API/SearchMovie/#{ENV["API_IMDB_KEY"]}/#{search}")
    @movies = JSON.parse(Net::HTTP.get(uri))["results"]
  end

  def show
    movie = Movie.find_by(imdbid: params[:id])
    unless movie.nil?
      if params[:id] == movie.imdbid
        @movie = movie
      end
    else
      uri = URI("https://imdb-api.com/en/API/Title/#{ENV["API_IMDB_KEY"]}/#{params[:id]}")
      movie = JSON.parse(Net::HTTP.get(uri))
      @movie = Movie.create(
        title: movie["title"],
        year: movie["year"],
        image: movie["image"],
        plot: movie["plot"],
        director: movie["directors"],
        genres: movie["genres"],
        imdbid: movie["id"]
      )
    end
  end

  def set_review
    @review = @movie.review.find(params[:id])
  end
end
