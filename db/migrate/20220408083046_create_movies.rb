class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.text :title
      t.text :year
      t.text :image
      t.text :plot
      t.text :director
      t.text :genres
      t.references :movie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
