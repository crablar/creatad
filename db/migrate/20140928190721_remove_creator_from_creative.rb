class RemoveCreatorFromCreative < ActiveRecord::Migration
	def change
		remove_column :creatives, :creator
	end
end
