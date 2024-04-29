class Exercise < ApplicationRecord
  belongs_to :train_block
  validates :approach_number, comparison: { greater_than: 0 }
end
