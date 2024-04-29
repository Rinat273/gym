require 'rails_helper'

describe TrainBlock do
  describe "validations" do
    it { should validate_presence_of :sequence_number }
  end

  describe "assotiations" do
    it { should belong_to :train_plan }
    it { should have_many :exercises }
  end
end

RSpec. describe TrainBlock do
  describe 'Creation' do
    let (:train_block) { create(:train_block) }

    it 'validation sequence_number' do
      expect(train_block).to validate_presence_of(:sequence_number)
    end
    it 'validation title' do
      expect(train_block).to validate_presence_of(:title)
    end
  end
end