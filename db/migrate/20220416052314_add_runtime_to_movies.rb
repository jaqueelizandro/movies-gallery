class AddRuntimeToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :runtime, :text
  end
end
