require 'rails_helper'

RSpec.feature 'User signs up' do
  scenario 'with valid data' do
    visit new_user_registration_path

    fill_in 'Email', with: 'hehe@anviam.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_button 'Sign up'

    expect(page).to have_text 'Welcome! You have signed up successfully.'
    expect(page).to have_current_path root_path
  end

  scenario 'with invalid data' do
    visit new_user_registration_path
    fill_in 'Email', with: ''
    fill_in 'Password', with: ''
    fill_in 'Password confirmation', with: ''
    click_button 'Sign up'

    expect(page).to have_text "Email can't be blank"
    expect(page).to have_text "Password can't be blank"
  end
end