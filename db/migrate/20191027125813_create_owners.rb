class CreateOwners < ActiveRecord::Migration[6.0]
  def change
    create_table :owners do |t|
      t.string  :login
      t.string  :external_id, null: false
      t.string  :node_id
      t.string  :avatar_url
      t.string  :gravatar_id
      t.string  :url
      t.string  :html_url
      t.string  :followers_url
      t.string  :following_url
      t.string  :gists_url
      t.string  :starred_url
      t.string  :subscriptions_url
      t.string  :organizations_url
      t.string  :repos_url
      t.string  :events_url
      t.string  :received_events_url
      t.string  :external_type
      t.boolean :site_admin

      t.timestamps
    end
  end
end
