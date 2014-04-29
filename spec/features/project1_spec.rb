require 'spec_helper'

feature 'Managing list of commercial property' do
  scenario 'User can create, edit, and delete property listings' do
    visit '/'
    click_on 'Add Listing'
    fill_in 'Address', with: "1900 Broadway, Boulder, CO"
    fill_in 'Description', with: "Store-front location in shopping center"
    expect(page).to have_content "1900 Broadway, Boulder, CO"
  end
end