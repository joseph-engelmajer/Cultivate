class AddSocialMediaToFarms < ActiveRecord::Migration[5.0]
  def change
    add_column :farms, :insta_link, :string
    add_column :farms, :fb_link, :string
    add_column :farms, :twitter_link, :string
    add_column :farms, :pinterest_link, :string
    add_column :farms, :woof_link, :string
    add_column :farms, :site_link, :string
  end
end
