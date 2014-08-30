class CreativesController < ApplicationController

  def new
  end

  def create
    @creative = Creative.new(creative_params)

    @creative.save
    redirect_to @creative
  end

  def show
    @creative = Creative.find(params[:id])
  end

  def index
    @creatives = Creative.all
  end

  private
  def creative_params
    params.require(:creative).permit(:title, :text, :image)
  end

end