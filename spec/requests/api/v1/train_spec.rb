require 'rails_helper'
require 'json'

RSpec.describe "Trains", type: :request do
  describe "GET /index" do
    describe 'Creation' do
      let!(:train) { create(:train) }

      it "status http 200" do
        get "/api/v1/trains"
        expect(response.status).to eq(200)
      end

      it "content of the answer" do
        get "/api/v1/trains"
        json_body = JSON.parse(response.body)
        expect(json_body[0]["id"]).to eq(train.id)
      end
    end
  end

  describe "POST /create" do
    describe 'Creation' do
      let!(:train_plan) { create(:train_plan) }
      
      it 'status http 201' do
        post "/api/v1/trains", params: { train: {train_plan_id: train_plan.id } }
        expect(response.status).to eq(201)
      end
    end
  end
end