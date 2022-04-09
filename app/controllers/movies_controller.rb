require 'net/http'

class MoviesController < ApplicationController
  def index
    search = ERB::Util.url_encode(params[:search])
    uri = URI("https://imdb-api.com/en/API/SearchMovie/#{ENV["API_IMDB_KEY"]}/#{search}")
    @movies = JSON.parse(Net::HTTP.get(uri))["results"]
  end

  def new
  end

  def edit
  end

  def show
    uri = URI("https://imdb-api.com/en/API/Title/#{ENV["API_IMDB_KEY"]}/#{params[:id]}")
    @movie = JSON.parse(Net::HTTP.get(uri))
  end
end
