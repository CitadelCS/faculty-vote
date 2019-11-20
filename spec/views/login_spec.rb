require 'rails_helper'

feature 'Visitor logs in' do
  scenario 'login page exists' do
    visit authentication_index_path
    expect(page).to have_content("Sign In")
  end
end


feature 'Visitor goes to front page' do
  scenario 'root page should be sign in page' do
    visit root_path
    expect(page).to have_content("Sign In")
  end
end