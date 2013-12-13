class ChangeColumnsToBigInt < ActiveRecord::Migration
  def change
  	change_column :tweets, :id, :bigint
  	change_column :tweets, :in_reply_to_status_id, :bigint
  	change_column :tweets, :in_reply_to_user_id, :bigint
  	change_column :tweets, :retweeted_status_id, :bigint
	change_column :tweets, :retweeted_status_user_id, :bigint

  end
end
