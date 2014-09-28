class CreativesController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]

	def new
		@namespace = 'new-creative'
	end

	def create
		@namespace = 'creatives'
		@creative = Creative.new(creative_params)
		@creative.sanitize_link
		@creative.user = current_user
		@creative.save
		redirect_to action: 'index'
	end

	def show
		@namespace = 'creatives'
		@creative = Creative.find(params[:id])
	end

	def index
		@namespace = 'creatives'
		@creatives = Creative.all.order('dimensions', 'created_at').reverse_order
	end

	def prizes
	end

	private
	def creative_params
		@namespace = 'creatives'
		params.require(:creative).permit(:link, :image)
	end

end
