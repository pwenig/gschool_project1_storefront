class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :address
      t.string :city
      t.string :state
      t.string :description
      t.string :image_url
    end
  end
end
