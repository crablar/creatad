class AddDimensionsToCreative < ActiveRecord::Migration
  def change
		add_column :creatives, :dimension, :string
  end
end
