class GigsController < ApplicationController
  before_action :set_gig, only: [:show]
  def index
    @last_gig_id = Gig.all.sort_by{|g| g.date}.last(1)[0].id
  end

  def new
    @gig = Gig.new
  end

  def create
    @gig = Gig.new(gig_params)

    if @gig.save
      redirect_to @gig, notice: 'Show has been posted'
    else
      render :new
    end
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
