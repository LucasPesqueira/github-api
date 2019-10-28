require 'rails_helper'

RSpec.describe OwnersController, type: :controller do
  before(:all) do
    @owner = Owner.create(external_id: 1)
    Owner.reindex
  end

  describe '#index' do
    before do
      get :index
    end

    it 'returns 200 status' do
      expect(response.status).to eq(200)
    end

    it 'returns a owner' do
      expect(JSON.parse(response.body)['data'].count).to eq(1)
    end
  end

  describe '#show' do
    before do
      get :show, params: { id: Owner.find_by(external_id: 1).id }
    end

    it 'returns 200 status' do
      expect(response.status).to eq(200)
    end

    it 'returns the owner created with external id 1' do
      expect(JSON.parse(response.body)['data']['attributes']['external-id']).to eq('1')
    end
  end
end
