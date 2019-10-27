# == Schema Information
#
# Table name: repositories
#
#  id                :bigint           not null, primary key
#  external_id       :string           not null
#  node_id           :string
#  name              :string
#  full_name         :string
#  private           :boolean
#  html_url          :string
#  description       :string
#  fork              :boolean
#  url               :string
#  forks_url         :string
#  keys_url          :string
#  collaborators_url :string
#  teams_url         :string
#  hooks_url         :string
#  issue_events_url  :string
#  events_url        :string
#  assignees_url     :string
#  branches_url      :string
#  tags_url          :string
#  blobs_url         :string
#  git_tags_url      :string
#  git_refs_url      :string
#  trees_url         :string
#  statuses_url      :string
#  languages_url     :string
#  stargazers_url    :string
#  contributors_url  :string
#  subscribers_url   :string
#  subscription_url  :string
#  commits_url       :string
#  git_commits_url   :string
#  comments_url      :string
#  issue_comment_url :string
#  contents_url      :string
#  compare_url       :string
#  merges_url        :string
#  archive_url       :string
#  downloads_url     :string
#  issues_url        :string
#  pulls_url         :string
#  milestones_url    :string
#  notifications_url :string
#  labels_url        :string
#  releases_url      :string
#  deployments_url   :string
#  pushed_at         :datetime
#  git_url           :string
#  ssh_url           :string
#  clone_url         :string
#  svn_url           :string
#  homepage          :string
#  size              :integer
#  stargazers_count  :integer
#  watchers_count    :integer
#  language          :string
#  has_issues        :boolean
#  has_projects      :boolean
#  has_downloads     :boolean
#  has_wiki          :boolean
#  has_pages         :boolean
#  forks_count       :integer
#  mirror_url        :string
#  archived          :boolean
#  disabled          :boolean
#  open_issues_count :integer
#  license           :jsonb
#  forks             :integer
#  open_issues       :integer
#  watchers          :integer
#  default_branch    :string
#  score             :float
#  owner_id          :bigint
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'rails_helper'

RSpec.describe Repository, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
