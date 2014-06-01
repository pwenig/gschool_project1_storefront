require 'spec_helper'

describe Neighborhood do
  it 'should not be valid without a neighborhood name' do
    neighborhood = Neighborhood.new(name: nil)
    expect(neighborhood).to_not be_valid
  end
end