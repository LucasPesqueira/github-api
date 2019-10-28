# == Schema Information
#
# Table name: owners
#
#  id                  :bigint           not null, primary key
#  login               :string
#  external_id         :string           not null
#  node_id             :string
#  avatar_url          :string
#  gravatar_id         :string
#  url                 :string
#  html_url            :string
#  followers_url       :string
#  following_url       :string
#  gists_url           :string
#  starred_url         :string
#  subscriptions_url   :string
#  organizations_url   :string
#  repos_url           :string
#  events_url          :string
#  received_events_url :string
#  external_type       :string
#  site_admin          :boolean
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Owner < ApplicationRecord
  searchkick

  validates :external_id, presence: true, uniqueness: true

  has_many :repositories
end
