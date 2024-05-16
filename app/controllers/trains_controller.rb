class TrainsController < ApplicationController
  before_action :set_train, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /trains or /trains.json
  def index
    @trains = Train.all
  end

  # GET /trains/1 or /trains/1.json
  def show
  end

  # GET /trains/new
  def new
    @train = Train.new
  end

  # GET /trains/1/edit
  def edit
  end

  # POST /trains or /trains.json
  def create
    @train = Train.new(train_params)
    @train.save
    redirect_to train_current_workout_url(train_id: @train.id)
  end

  def current_workout
    train = Train.find(params[:train_id])
    @exercise = train.current_exercise
    @exercise_name = train.show_exercise
    @train_id = train.id
  end

  def done
    train = Train.find(params[:train_id])

    if train.done?
      redirect_to action: :new
    else
      train.finish_exercise
      train.done!
      redirect_to action: :current_workout
    end
  end

  # PATCH/PUT /trains/1 or /trains/1.json
  def update
    respond_to do |format|
      if @train.update(train_params)
        format.html { redirect_to train_url(@train), notice: "Train was successfully updated." }
        format.json { render :show, status: :ok, location: @train }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @train.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trains/1 or /trains/1.json
  def destroy
    @train.destroy!

    respond_to do |format|
      format.html { redirect_to trains_url, notice: "Train was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_train
      @train = Train.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def train_params
      params.require(:train).permit(:train_plan_id)
    end
end
