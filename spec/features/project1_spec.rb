require 'spec_helper'

feature 'Managing list of commercial property' do
  scenario 'User can create' do
    visit '/'
    click_on 'Add Storefront'
    fill_in 'Address', with: "1900 Broadway"
    fill_in 'City', with: "Boulder"
    fill_in 'State', with: "CO"
    fill_in 'Description', with: "Store-front location in shopping center"
    fill_in 'Image URL', with: "www.imageurl.com"
    click_on 'Add Listing'
    expect(page).to have_content "1900 Broadway"
  end

  scenario 'User can edit' do
    visit '/'
    click_on 'Add Storefront'
    fill_in 'Address', with: "1900 Broadway"
    fill_in 'City', with: "Boulder"
    fill_in 'State', with: "CO"
    fill_in 'Description', with: "Store-front location in shopping center"
    fill_in 'Image URL', with: "www.imageurl.com"
    click_on 'Add Listing'
    click_on '1900 Broadway'
    click_on '1900 Broadway'
    fill_in 'Address', with: "1035 Pearl"
    click_on 'Update Listing'
    expect(page).to have_content "1035 Pearl"
  end
  scenario 'User can delete a store listing' do
    visit '/'
    click_on 'Add Storefront'
    fill_in 'Address', with: "1900 Broadway"
    fill_in 'City', with: "Boulder"
    fill_in 'State', with: "CO"
    fill_in 'Description', with: "Store-front location in shopping center"
    fill_in 'Image URL', with: "www.imageurl.com"
    click_on 'Add Listing'
    click_on '1900 Broadway'
    click_on '1900 Broadway'
    click_on 'Delete'
    expect(page).to_not have_content "1900 Broadway"
  end

  scenario 'User can add an idea to a property listing' do
  visit '/'
  click_on 'Add Storefront'
  fill_in 'Address', with: "1900 Broadway"
  fill_in 'City', with: "Boulder"
  fill_in 'State', with: "CO"
  fill_in 'Description', with: "Store-front location in shopping center"
  fill_in 'Image URL', with: "www.imageurl.com"
  click_on 'Add Listing'
  click_on '1900 Broadway'
  fill_in 'idea_box', with: "A high end deli"
  click_on 'Add Idea'
  expect(page).to have_content "A high end deli"
  end

end