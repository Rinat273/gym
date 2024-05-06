class Train < ApplicationRecord
  belongs_to :train_plan
  delegate :exercises, to: :train_plan
  has_many :workouts

  def steps
    steps = []
    TrainPlan.find(train_plan_id).exercises.each do |set|
      steps << set
    end
    steps
  end

  def done?
    current_exercise.id == steps.last.id
  end

  def current_exercise
    steps[current_step_number]
  end

  def show_exercise
    trblock = TrainBlock.find(current_exercise.train_block_id)
    exercise = trblock.title
    exercise
  end

  def done!
    update!(current_step_number: current_step_number + 1)
  end

  def finish_exercise
    # redirect_to controller: 'workouts', action: :create, params: { workout: { train_id: 1, exercise_id: 1 } } 
    Workout.create!(train_id: id, exercise_id: current_exercise.id)
  end

end
