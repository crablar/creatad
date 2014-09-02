class CreativesController < ApplicationController

  def new
  end

  def create
    @creative = Creative.new(creative_params)
    @creative.sanitize_link
    @creative.creator = params[:creator_email]
    @creative.save
    redirect_to action: "index"
  end

  def show
    @creative = Creative.find(params[:id])
  end

  def index
    @creatives = Creative.all.sort_by { |creative|creative.created_at}.reverse
  end

  private
  def creative_params
    params.require(:creative).permit(:link, :image, :creator_email)
  end

end