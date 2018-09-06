class AddDateToRating < ActiveRecord::Migration[5.2]
  def change
  	add_column :ratings, :date, :date
  end
end
