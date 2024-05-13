class TrainPlansController < ApplicationController
  before_action :set_train_plan, only: %i[ show edit update destroy ]

  # GET /train_plans or /train_plans.json
  def index
    @train_plans = TrainPlan.all

  end

  # GET /train_plans/1 or /train_plans/1.json
  def show
  end

  # GET /train_plans/new
  def new
    @train_plan = TrainPlan.new
  end

  # GET /train_plans/1/edit
  def edit
  end

  # POST /train_plans or /train_plans.json
  def create
    @train_plan = TrainPlan.new(train_plan_params)

    respond_to do |format|
      if @train_plan.save
        format.html { redirect_to train_plan_url(@train_plan), notice: "Train plan was successfully created." }
        format.json { render :show, status: :created, location: @train_plan }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @train_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /train_plans/1 or /train_plans/1.json
  def update
    respond_to do |format|
      if @train_plan.update(train_plan_params)
        format.html { redirect_to train_plan_url(@train_plan), notice: "Train plan was successfully updated." }
        format.json { render :show, status: :ok, location: @train_plan }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @train_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /train_plans/1 or /train_plans/1.json
  def destroy
    @train_plan.destroy!

    respond_to do |format|
      format.html { redirect_to train_plans_url, notice: "Train plan was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_train_plan
      @train_plan = TrainPlan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def train_plan_params
      params.require(:train_plan).permit(:title)
    end
end
