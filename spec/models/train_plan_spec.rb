require 'rails_helper'

describe TrainPlan do
  describe "validations" do
    it { should validate_presence_of :title }
  end

  describe "assotiations" do
    it { should have_many :train_blocks }
  end
end


RSpec. describe TrainPlan do
  describe 'Creation' do
    let (:train_plan) { create(:train_plan) }

    it 'validation' do
      expect(train_plan).to validate_presence_of(:title)
    end
  end
end
