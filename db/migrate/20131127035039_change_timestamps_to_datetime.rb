class ChangeTimestampsToDatetime < ActiveRecord::Migration
  def change
  	change_column :tweets, :retweeted_status_timestamp, :datetime
  	change_column :tweets, :tweet_timestamp, :datetime
  end
end
