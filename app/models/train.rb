class Train < ApplicationRecord
  belongs_to :train_plan
  has_many :workouts
end
