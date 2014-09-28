class AddUserToCreative < ActiveRecord::Migration
	def change
		add_reference :creatives, :user, index: true
	end
end
