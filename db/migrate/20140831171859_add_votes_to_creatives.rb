class AddVotesToCreatives < ActiveRecord::Migration
  def change
		add_column :creatives, :upvote_count, :integer
		add_column :creatives, :downvote_count, :integer
		create_table :votes do |t|
			t.integer :user_id
			t.boolean :voted_yes
			t.integer :creative_id

			t.timestamps
		end
  end
end
