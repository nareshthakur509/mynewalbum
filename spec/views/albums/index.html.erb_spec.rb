require 'rails_helper'
RSpec.describe "albums/index", type: :view do
  current_user = User.first_or_create!(email:"naresh@anviam.com" , password:"Naresh", password_confirmation:"Naresh")
  before(:each) do
    assign(:albums, [
      Album.create!(
        name: "Album1",
        description: "Description1",
        user: current_user

      ),
      Album.create!(
        name: "Album2",
        description: "Description2",
        user: current_user
      )
    ])
  end
  it "displays both albums" do
  #   render
  #   rendered.should contain("Album1" , "Description1")
  #   rendered.should contain("Album2" , "Description2")
  end
end