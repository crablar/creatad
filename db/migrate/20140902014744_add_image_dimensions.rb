class AddImageDimensions < ActiveRecord::Migration
  def change
	  add_column :creatives, :width, :integer
	  add_column :creatives, :height, :integer
		rename_column :creatives, :dimension, :dimensions
  end
end
