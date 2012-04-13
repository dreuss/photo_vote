class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def new
    @photos = Photo.new
  end

  def show

  end

  def create
    @photos = Photo.new(params[:photo])
    if @photos.save
      redirect_to photos_path
    else
      render :new
    end
  end


  private




end
