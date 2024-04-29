class Workout < ApplicationRecord
  belongs_to :train
  belongs_to :exercise
end
