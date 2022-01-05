require 'rails_helper'

RSpec.feature 'User signs in' do
  current_user = User.first_or_create!(email:"naresh@anviam" , password:"Naresh", password_confirmation:"Naresh")
  scenario 'with valid credentials' do
    user = current_user
    visit new_user_session_path

    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'
    expect(page).to have_text 'Sign Up'
    expect(page).to have_text 'Forgot your password?'

  end

  scenario 'with invalid credentials' do
    user = current_user
    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'
    expect(page).to have_text 'Invalid Email or password.'

  end
end