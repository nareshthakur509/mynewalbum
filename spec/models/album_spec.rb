require 'rails_helper'

RSpec.describe Album, type: :model do
  current_user = User.first_or_create!(email:"naresh@anviam.com" , password:"Naresh", password_confirmation:"Naresh")
  
  it "Album has a name" do
    album=Album.new(
    name:"",
    description: "aaaaa",
    user_id: current_user.id
  )
  expect(album).to_not be_valid
  album.name ="Album1"
  expect(album).to be_valid
  end



  it "has a description" do
    album=Album.new(
    name:"Album",
    description: "",
    user_id:current_user.id
  )
  expect(album).to_not be_valid
  album.description ="My Description"
  expect(album).to be_valid
  end


  it "has a user id" do
    album=Album.new(
    name:"Album",
    description: "aaaaa",
    user_id: 0
  )
  expect(album).to_not be_valid
  album.user_id =current_user.id
  expect(album).to be_valid
end
it "has a description of minimum 4 characters" do
  album=Album.new(
  name:"Album",
  description: "des",
  user_id:current_user.id
)
expect(album).to_not be_valid
album.description ="My Description"
expect(album).to be_valid
end

  # it "has a name ,description and user id for Album" do
  #   album=Album.create(
  #   name:"Album1",
  #   description: "description",
  #   user_id: current_user.id
  # )
  # expect(album).to eq "Album1,description, user_id "

  # end
end
