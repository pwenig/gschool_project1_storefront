class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :idea
      t.belongs_to :property
      t.timestamps
    end
  end
end
