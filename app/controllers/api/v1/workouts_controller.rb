class Api::V1::WorkoutsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @workouts = Workout.all
    if @workouts
      render json: @workouts, status: 200
    else
      render json: "Workouts Not Found", status: 404
    end
  end

  # def show
  #   @workout = Workout.find(params[:id])
  #   if @workout
  #     render json: @workout, status: 200
  #   else
  #     render json: "Workout Not Found", status: 404
  #   end
  # end

  def create
    @workout = Workout.new(workout_params)
    if @workout.save
      render json: @workout, status: 201
    else
      render json: "Workout Not Found", status: 400
    end
  end

  # def destroy
  #   @workout = Workout.find(params[:id])
  #   if @workout
  #     @workout.destroy
  #     render json: "Workout deleted", status: 204
  #   end
  # end

  private
  def workout_params
    params.require(:workout).permit(:train_id, :exercise_id)
  end

end