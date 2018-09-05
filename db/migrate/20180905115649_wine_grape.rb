class WineGrape < ActiveRecord::Migration[5.2]
  def change
  	create_table :wine_grapes do |t|
  		t.integer :wine_id
  		t.integer :grape_id
      t.timestamps
    end
  
  end
end
