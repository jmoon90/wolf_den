class ChangePostsContentToText < ActiveRecord::Migration
  def up
    Post.where(published_at: nil).each do |post|
      post.published_at = Time.now
    end

    change_column(:posts, :content, :text) 
    change_column(:posts, :published_at, :datetime, null: false) 
  end

  def down
    change_column(:posts, :content, :string) 
  end
end
