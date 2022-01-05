# require 'rails_helper'

# RSpec.describe "Photos", type: :request do
#     current_user = User.first_or_create!(email:"naresh@anviam" , password:"Naresh", password_confirmation:"Naresh")
#     album = Album.first_or_create!(name:"Album1" , description:"description")
#     describe "GET /new" do
#       it "render successful response" do
#         photo=Photo.new(      
#           name: "Photo1",
#           all_tags:"tags",
#           album_id: album.id
#         )
#         photo.save
#         get photos_url(photo)
#         expect(response).to be_successful
  
#       end
#   end
# end
