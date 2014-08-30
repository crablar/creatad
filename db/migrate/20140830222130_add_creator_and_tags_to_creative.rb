class AddCreatorAndTagsToCreative < ActiveRecord::Migration
  def change
    add_column :creatives, :creator, :string

    create_table :creative_tags do |t|
      t.integer :creative_id
      t.string :tag

      t.timestamps
    end
  end
end
