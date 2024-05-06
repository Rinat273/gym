class TrainPlan < ApplicationRecord
  has_many :trains
  has_many :train_blocks
  has_many :exercises, through: :train_blocks

  validates :title, presence: true, length: { minimum: 3 }

  def name_with_initial
    "Название: #{title}"
  end
end