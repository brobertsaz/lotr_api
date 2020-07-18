require 'rails_helper'

RSpec.describe "Api::V1::Users", type: :request do
  describe 'create' do
    it 'succeeds' do
      params = { user: {email: 'test@test.com', password: 'password' }}
      post api_v1_users_path(params: params)
      expect(response.code).to eql '200'
      expect(JSON.parse(response.body)['email']).to eq 'test@test.com'
    end
  end

  describe 'delete' do
    let!(:user) { create :user }
    it 'succeeds' do
      params = { user: {email: 'test@test.com', password: 'password' }}
      delete api_v1_user_path(id: user.id)
      expect(response.code).to eql '200'
      expect(JSON.parse(response.body)).to eq 'destroyed'
    end
  end
end

