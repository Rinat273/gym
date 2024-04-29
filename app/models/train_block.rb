class TrainBlock < ApplicationRecord
  belongs_to :train_plan
  has_many :exercises
  validates :title, presence: true, length: { minimum: 3 }
end
