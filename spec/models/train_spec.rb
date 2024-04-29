require 'rails_helper'

describe Train do
  describe "assotiations" do
    it { should belong_to :train_plan }
    it { should have_many :workouts }
  end
end