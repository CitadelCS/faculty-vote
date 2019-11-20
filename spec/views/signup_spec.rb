require 'rails_helper'

feature 'Visitor signs up' do
  scenario 'signup page exists' do
    visit signup_path
    expect(page).to have_content("First Name")
  end
end