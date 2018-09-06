class CreateWineDistributerAssoc < ActiveRecord::Migration[5.2]
  def change
    create_table :wine_distributer_assocs do |t|
    	t.integer :wine_id
    	t.integer :distributer_id
    end
  end
end
