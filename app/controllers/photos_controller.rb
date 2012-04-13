class PhotosController < ApplicationController
  def index
    @photos = Photo.rank_order.all
  end

  def show
    @photos = Photo.find(params[:id])
  end

  def new
    @photos = Photo.new
  end

  def create
    @photos = Photo.new(params[:photo])
    if @photos.save
      redirect_to photos_path
    else
      render :new
    end
  end

  def edit
    @photos = Photo.find(params[:id])
  end

  def update
    @photos = Photo.find(params[:id])
    if @photos.update_attributes(params[:photo])
      redirect_to photo_path(params[:id])
    else
      render :edit
    end
  end

  def upvote
    @photos = Photo.find(params[:id])
    @photos.up_vote
    flash[:notice] = "Upvote made"
    redirect_to photos_path
  end

  private
end
