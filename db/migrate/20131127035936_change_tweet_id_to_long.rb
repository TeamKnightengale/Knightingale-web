class ChangeTweetIdToLong < ActiveRecord::Migration
  def change
  	change_column :expanded_urls, :tweet_id, :bigint
  end
end
