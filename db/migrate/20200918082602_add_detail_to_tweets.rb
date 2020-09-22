class AddDetailToTweets < ActiveRecord::Migration[6.0]
  def change
    add_column :tweets, :detail, :text, null: false
  end
end
