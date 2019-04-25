class AlbumsController < ApplicationController
  before_action :set_album, only: [:show, :edit]
  def index
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)

    if @album.save
      redirect_to @album, notice: 'Album has been posted'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @album.update(album_params)
      redirect_to @album, notice: 'Your album was created successfully'
    else
      render :edit
    end
  end

  def show
  end

    def album_params
      params.require(:album).permit(:url, :image, :name)
    end

    def set_album
      @album = Album.find(params[:id])
    end
end
