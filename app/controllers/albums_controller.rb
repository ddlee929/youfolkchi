class AlbumsController < ApplicationController
  before_action :set_album, only: [:show, :edit]
  before_action :authenticate_user!, :except => [:list,:index]

  def index
  end

  def list
    @albums = Album.all
  end

  def new
    puts "Running new action for album"
    @album = Album.new
  end

  def create
    executeIfAdmin {
    @album = Album.new(album_params)

    if @album.save!
      redirect_to @album, notice: 'Album has been posted'
    else
      puts "failure"
      puts @album.errors.full_messages
      render :new
    end
    }
  end

  def edit
  end

  def update
    executeIfAdmin {
    @album = Album.find(params[:id])
    if @album.update(album_params)
      redirect_to @album, notice: 'Your album was created successfully'
    else
      render :edit
    end
    }
  end

  def destroy
    executeIfAdmin {
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to list_albums_path
    }
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
