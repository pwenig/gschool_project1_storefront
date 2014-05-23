require 'spec_helper'

describe Property do
  it "add an idea to a property"do
    property = Property.create!(
     :address => "1900 Pearl", :city => "Boulder", :state => "CO",
     :description => "High traffic mall", :image_url => "www.example.com"
    )
    idea = Idea.create!(
      :idea => "A high end deli", :property_id => property.id
    )
    expect(property.ideas.first.idea).to eq "A high end deli"

  end
end