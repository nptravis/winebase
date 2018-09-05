class CreateWines < ActiveRecord::Migration[5.2]
  def change
    create_table :wines do |t|
    	t.string :vintage
    	t.string :name
    	t.integer :producer_id
    	t.integer :region_id
    	t.integer :country_id
    	t.integer :style_id
    	t.string :price
      t.timestamps
    end
  end
end
