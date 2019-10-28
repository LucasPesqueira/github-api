class OwnerResource < JSONAPI::Resource
  attributes :login, :external_id, :node_id, :avatar_url, :gravatar_id, :url, :html_url, :followers_url,
             :following_url, :gists_url, :starred_url, :subscriptions_url, :organizations_url, :repos_url,
             :events_url, :received_events_url, :external_type, :site_admin, :created_at, :updated_at
end
