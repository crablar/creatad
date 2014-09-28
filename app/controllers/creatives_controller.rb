class CreativesController < ApplicationController

    def new
        @namespace = "new-creative"
    end

    def create
        @namespace = "creatives"
        @creative = Creative.new(creative_params)
        @creative.sanitize_link
        @creative.creator = params[:creator_email]
        @creative.save
        redirect_to action: "index"
    end

    def show
        @namespace = "creatives"
        @creative = Creative.find(params[:id])
    end

    def index
        @namespace = "creatives"
        @creatives = Creative.all.order("dimensions", "created_at").reverse_order
    end

    def prizes
    end

    private
    def creative_params
        @namespace = "creatives"
        params.require(:creative).permit(:link, :image, :creator_email)
    end

end
