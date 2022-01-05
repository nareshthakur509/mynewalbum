require 'rails_helper'

RSpec.feature 'User signs out' do
  current_user = User.first_or_create!(email:"naresh@anviam" , password:"Naresh", password_confirmation:"Naresh")

  scenario 'user signed in' do
    user = current_user

    visit root_path

    expect(page).to have_text 'Welcome'
    expect(page).to have_no_link 'Log Out'
    expect(page).to have_current_path root_path
  end
end