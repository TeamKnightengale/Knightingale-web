json.array!(@tweets) do |tweet|
  json.extract! tweet, :tweet_id, :tweet_timestamp, :source,, :text
  json.url tweet_url(tweet, format: :json)
end
