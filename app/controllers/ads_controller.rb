class AdsController < ApplicationController

  def new
  end

  def create
    @ad = Ad.new(ad_params)

    @ad.save
    redirect_to @ad
  end

  def show
    @ad = Ad.find(params[:id])
  end

  def index
    @ads = Ad.all
  end

  private
  def ad_params
    params.require(:ad).permit(:title, :text, :image)
  end

end