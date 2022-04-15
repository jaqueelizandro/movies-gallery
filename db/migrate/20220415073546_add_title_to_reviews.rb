class AddTitleToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :title, :text
  end
end
