require 'rails_helper'

describe Exercise do
  describe "validations" do
    it { should validate_presence_of :approach_number }
  end

  describe "assotiations" do
    it { should belong_to :train_block }
  end
end