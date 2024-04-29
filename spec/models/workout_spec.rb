require 'rails_helper'

describe Workout do
  describe "assotiations" do
    it { should belong_to :train }
    it { should belong_to :exercise }
  end
end