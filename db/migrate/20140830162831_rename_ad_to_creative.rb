class RenameAdToCreative < ActiveRecord::Migration
  def change
    rename_table :ads, :creatives
  end
end
