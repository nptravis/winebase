class WineRating < ActiveRecord::Migration[5.2]
  def change
  	create_table :wine_ratings do |t|
  		t.integer :wine_id
  		t.integer :rating_id
      t.timestamps
    end
  	
  end
end
