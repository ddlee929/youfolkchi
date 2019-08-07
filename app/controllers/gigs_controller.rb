
class GigsController < ApplicationController
  before_action :set_gig, only: [:show, :edit]
  before_action :authenticate_user!, :except => [:list,:index]

  def index
    @last_gig = Gig.all.sort_by{|g| g.date}.last(1)[0]
  end

  def list
    @gigs = Gig.all
  end

  def new
    @gig = Gig.new
  end

  def create
    executeIfAdmin {
      @gig = Gig.new(gig_params)

      if @gig.save
          redirect_to @gig, notice: 'Show has been posted'
      else
        render :new
      end
     }
  end

  def edit
  end

  def update
    executeIfAdmin {
    @gig = Gig.find(params[:id])
    if @gig.update(gig_params)
      redirect_to @gig, notice: 'Your show was updated successfully'
    else
      render :edit
    end
    }
  end

  def destroy
    executeIfAdmin {
    @gig = Gig.find(params[:id])
    @gig.destroy
    redirect_to list_gigs_path
    }
  end

  def show
  end

    def gig_params
      params.require(:gig).permit(:date, :location, :artists)
    end

    def set_gig
      @gig = Gig.find(params[:id])
    end
end
