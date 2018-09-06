class AddTypeToWines < ActiveRecord::Migration[5.2]
  def change
  	add_column :wines, :type, :string
  end
end
