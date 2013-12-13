class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets, :id => false do |t|
      t.integer :id, :options => 'PRIMARY KEY'
      t.string :source
      t.string :text
      t.integer :in_reply_to_status_id
      t.integer :in_reply_to_user_id
      t.integer :retweeted_status_id
      t.integer :retweeted_status_user_id
	  t.date :retweeted_status_timestamp
	  t.date :tweet_timestamp 	
      t.timestamps
    end
  end
end
