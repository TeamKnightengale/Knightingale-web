class CreateExpandedUrls < ActiveRecord::Migration
  def change
    create_table :expanded_urls do |t|
      t.string :url
      t.integer :tweet_id
      t.timestamps
    end
  end
end
