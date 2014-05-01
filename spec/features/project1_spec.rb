require 'spec_helper'

feature 'Managing list of commercial property' do
  scenario 'User can create, edit, and delete property listings' do
    visit '/'
    fill_in 'address', with: "1900 Broadway"
    fill_in 'city', with: "Boulder"
    fill_in 'state', with: "CO"
    fill_in 'description', with: "Store-front location in shopping center"
    fill_in 'image_url', with: "www.imageurl.com"
    click_on 'Add Listing'
    expect(page).to have_content "1900 Broadway"
  end
end