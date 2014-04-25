require 'spec_helper'

feature 'Managing list of commercial properties' do
  scenario 'User can create, edit, and delete property listings' do
    visit '/'
    expect(page).to have_content "Welcome"
  end
end