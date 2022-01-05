require 'rails_helper'
RSpec.describe "albums/edit", type: :view do
  current_user = User.first_or_create!(email:"naresh@anviam.com" , password:"Naresh", password_confirmation:"Naresh")
  before(:each) do
    @album = assign(:albums,Album.create!(
        name: "Album1",
        description: "Description1",
        user: current_user

    ))
  end
  it "render edit album form" do
    # render
    # assert_select "form[action=?][method=?], album_path(@album)" ,album do
    # assert_select "input[name=?], album[name]"
    # assert_select "input[textarea=?], album[description]"
    # end

  end
end