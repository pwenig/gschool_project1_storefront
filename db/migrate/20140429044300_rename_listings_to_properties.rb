class RenameListingsToProperties < ActiveRecord::Migration
  def change
    rename_table :listings, :properties
  end
end
