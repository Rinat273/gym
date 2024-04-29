class TrainBlock < ApplicationRecord
  belongs_to :train_plan
  has_many :exercises
  validates :title, presence: true, length: { minimum: 3 }
  validates :sequence_number, comparison: { greater_than: 0 }
end
