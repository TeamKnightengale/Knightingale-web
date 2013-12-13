namespace :tweets do

	desc "Import tweets from CSV"
	task :import_csv => :environment do
		require 'csv'
		csv_file_path = "#{Rails.root}/lib/assets/tweets.csv"
		CSV.foreach(csv_file_path, headers: true) do |row|
			t = Tweet.create!({
				id: row["tweet_id"],
				in_reply_to_status_id: row["in_reply_to_status_id"],
				in_reply_to_user_id: row["in_reply_to_user_id"],
				tweet_timestamp: row["timestamp"],
				source: row["source"],
				text: row["text"],
				retweeted_status_id: row["retweeted_status_id"],
				retweeted_status_user_id: row["retweeted_status_user_id"],
				retweeted_status_timestamp: row["retweeted_status_timestamp"]
				})
		end
	end
end