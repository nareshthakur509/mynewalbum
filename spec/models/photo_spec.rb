require 'rails_helper'

RSpec.describe Photo, type: :model do
  current_user = User.first_or_create!(email:"naresh@anviam" , password:"Naresh", password_confirmation:"Naresh")
  album = Album.first_or_create!(name:"album1" , description:"My Description" , user_id:current_user.id)
  it "If Photo is empty" do
    photo=Photo.new(
    name:"Photo",
    album_id: album.id,

  )
  expect(photo).to_not be_valid
  end



#   it "Photo has a name" do
#         photo=Photo.new(
#         id: 1,
#         name:"",
#         album_id: album.id,
#         all_tags: "Tag1,Tag2",
#       )
#       expect(photo).to_not be_valid
#       photo.name="Photo1"
#       expect(photo).to be_valid
#   end


#   it "Photo has tags" do
#     photo=Photo.new(
#     name:"Photo1",
#     album_id: album.id,
#     all_tags: "",
#   )
#   expect(photo).to_not be_valid
#   photo.all_tags="Tag1,Tags2"
#   expect(photo).to be_valid
# end

end