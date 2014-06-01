class AddNeighborhoodIdToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :neighborhood_id, :integer
  end
end
