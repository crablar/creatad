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
		if @creative.save
			redirect_to action: 'index'
		else
			render :upload_failed
		end
	end

	def show
		@namespace = 'creatives'
		@creative = Creative.find(params[:id])
	end

	def index
		@namespace = 'creatives'
		@creatives_box1 = Creative.where('dimensions=\'box_creative\'').order('created_at DESC').take(2)
		@creatives_tall = Creative.where('dimensions=\'long_vertical_creative\'').order('created_at DESC').take(4)
		@creatives_wide = Creative.where('dimensions=\'long_horizontal_creative\'').order('created_at DESC').take(4)
		@creatives_box2 = Creative.where('dimensions=\'box_creative\'').order('created_at DESC').offset(2).take(2)
	end

	def upload_failed
	end

	def prizes
	end

	private
	def creative_params
		@namespace = 'creatives'
		params.require(:creative).permit(:link, :image)
	end

end
