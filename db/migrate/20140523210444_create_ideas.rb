class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :idea
      t.integer :property_id
      t.timestamps
    end
  end
end
