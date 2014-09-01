class AddDefaultValues < ActiveRecord::Migration
  def change
		change_column :creatives, :downvote_count, :integer, :default => 0
		change_column :creatives, :upvote_count, :integer, :default => 0
  end
end
