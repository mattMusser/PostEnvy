class AddTopicToSponsoredPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :sponsored_post, :topics, :integer
    add_index :sponsored_post, :topics
  end
end
