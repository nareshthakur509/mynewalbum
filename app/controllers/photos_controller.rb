class PhotosController < ApplicationController
  def new
      @photo = Photo.new
  end
  def create
      @album = Album.find(params[:album_id])
      @photos = @album.photos.create(photo_params)
      if @photo.save
          redirect_to album_path(id: @album.id)
      end
  end

  def destroy
      @album = Album.find(params[:id])
      @photo = @album.photos.find(params[:album_id])
      @photo.destroy
      redirect_to album_path
  end


  private
  def photo_params
      params.permit(:photo, :name, :all_tags)
  end

end

