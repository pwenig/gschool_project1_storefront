require 'spec_helper'

feature 'Managing list of commercial property' do
  scenario 'User can create, edit, and delete property listings' do
    visit '/'
    expect(page).to have_content "What Do You Want to Go Here?"
  end
end