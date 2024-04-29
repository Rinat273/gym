class TrainPlan < ApplicationRecord
  has_many :trains
  has_many :train_blocks
  validates :title, presence: true, length: { minimum: 3 }
end