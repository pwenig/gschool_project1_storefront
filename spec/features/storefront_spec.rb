require 'spec_helper'

feature 'Managing list of commercial property' do

  before  do
    Neighborhood.create!(name: "North Boulder")
    Neighborhood.create!(name: "South Boulder")
    Neighborhood.create!(name: "Pearl St")

  end

  scenario 'User can create' do
    visit '/'
    click_on 'Add Storefront'
    fill_in 'Address', with: "1900 Broadway"
    select 'South Boulder', :from => 'Neighborhood'
    fill_in 'City', with: "Boulder"
    fill_in 'State', with: "CO"
    fill_in 'Description', with: "Store-front location in shopping center"
    fill_in 'Image URL', with: "www.imageurl.com"
    click_on 'Add Listing'
    expect(page).to have_content "1900 Broadway"
    expect(page).to have_content "South Boulder"
  end

  scenario 'User can edit' do
    visit '/'
    click_on 'Add Storefront'
    fill_in 'Address', with: "1900 Broadway"
    select 'North Boulder', :from => 'Neighborhood'
    fill_in 'City', with: "Boulder"
    fill_in 'State', with: "CO"
    fill_in 'Description', with: "Store-front location in shopping center"
    fill_in 'Image URL', with: "www.imageurl.com"
    click_on 'Add Listing'
    click_on 'Click Here to View/Add Ideas'
    click_on '1900 Broadway'
    fill_in 'Address', with: "1035 Pearl"
    click_on 'Update Listing'
    expect(page).to have_content "1035 Pearl"
  end
  scenario 'User can delete a store listing' do
    visit '/'
    click_on 'Add Storefront'
    fill_in 'Address', with: "1900 Broadway"
    select 'North Boulder', :from => 'Neighborhood'
    fill_in 'City', with: "Boulder"
    fill_in 'State', with: "CO"
    fill_in 'Description', with: "Store-front location in shopping center"
    fill_in 'Image URL', with: "www.imageurl.com"
    click_on 'Add Listing'
    click_on 'Click Here to View/Add Ideas'
    click_on '1900 Broadway'
    click_on 'Delete'
    expect(page).to_not have_content "1900 Broadway"
  end

  scenario 'User can add an idea to a property listing' do
  visit '/'
  click_on 'Add Storefront'
  fill_in 'Address', with: "1900 Broadway"
  select 'North Boulder', :from => 'Neighborhood'
  fill_in 'City', with: "Boulder"
  fill_in 'State', with: "CO"
  fill_in 'Description', with: "Store-front location in shopping center"
  fill_in 'Image URL', with: "www.imageurl.com"
  click_on 'Add Listing'
  click_on 'Click Here to View/Add Ideas'
  fill_in 'idea_box', with: "A high end deli"
  click_on 'Add Idea'
  expect(page).to have_content "A high end deli"
  end

  scenario 'User can view store listings by neighborhood' do
    visit '/'
    click_on 'Add Storefront'
    fill_in 'Address', with: "1900 Broadway"
    select 'North Boulder', :from => 'Neighborhood'
    fill_in 'City', with: "Boulder"
    fill_in 'State', with: "CO"
    fill_in 'Description', with: "Store-front location in shopping center"
    fill_in 'Image URL', with: "www.imageurl.com"
    click_on 'Add Listing'
    click_on 'Add Storefront'
    fill_in 'Address', with: "1035 Pearl St"
    select 'Pearl St', :from => 'Neighborhood'
    fill_in 'City', with: "Boulder"
    fill_in 'State', with: "CO"
    fill_in 'Description', with: "High traffic storefront"
    fill_in 'Image URL', with: "www.imageurl.com"
    click_on 'Add Listing'

    click_on 'Browse Neighborhoods'
    click_on 'North Boulder'
    expect(page).to have_content "1900 Broadway"
    expect(page).to_not have_content "1035 Pearl St"
  end
end