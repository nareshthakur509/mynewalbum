require 'rails_helper'
RSpec.describe "Albums", type: :request do
  current_user = User.first_or_create!(email:"naresh@anviam.com" , password:"121212", password_confirmation:"121212")
  # let (:valid_attributes) do
  #   {
  #     name: "Album1",
  #     description: "description",
  #     user_id: current_user.id
  #   }
  # end

  # let (:invalid_attributes) do
  #   {
  #     'name' => 'A'
  #     'description' => 'D'
  #   }
  # end

  describe "GET /index" do
    it "renders #index Page" do
      album=Album.new(      
        name: "Album1",
        description: "description",
        user_id: current_user
      )
      album.user=current_user
      album.save
      get albums_url
      expect(response).to be_successful

    end
  end

  describe "GET /show" do
    it "renders #show page" do
      album=Album.new(      
        name: "Album1",
        description: "description",
        user_id: current_user.id
      )
      album.user=current_user
      album.save
      get album_url(album)
      expect(response).to be_successful

    end
  end


  # describe "GET /edit" do
  #   it "renders #edit page" do
  #     album=Album.new(      
  #       name: "Album1",
  #       description: "description",
  #       id: current_user.id,
  #       user_id: current_user.id
  #     )
  #     album.save
  #     get edit_album_path(album)
  #     expect(response).to be_successful

  #   end
  # end



end
