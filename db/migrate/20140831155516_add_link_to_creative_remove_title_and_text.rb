class AddLinkToCreativeRemoveTitleAndText < ActiveRecord::Migration
  def change
		rename_column :creatives, :title, :link
		remove_column :creatives, :text
  end
end
