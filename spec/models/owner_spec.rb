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

require 'rails_helper'

RSpec.describe Owner, type: :model do
  describe 'relations' do
    it { should have_many(:repositories) }
  end

  describe 'validations' do
    it { should validate_presence_of(:external_id) }

    it 'is expected to validate uniqueness of #external_id' do
      Owner.create(external_id: 1)
      expect(Owner.create(external_id: 1).save).to eq(false)
    end
  end
end
