class AddImdbidToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :imdbid, :text
  end
end
