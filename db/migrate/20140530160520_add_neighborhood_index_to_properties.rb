class AddNeighborhoodIndexToProperties < ActiveRecord::Migration
  def change
    add_index :properties, :neighborhood_id
  end
end
