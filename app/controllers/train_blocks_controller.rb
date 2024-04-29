class TrainBlocksController < ApplicationController
  before_action :set_train_block, only: %i[ show edit update destroy ]

  # GET /train_blocks or /train_blocks.json
  def index
    @train_blocks = TrainBlock.all
  end

  # GET /train_blocks/1 or /train_blocks/1.json
  def show
  end

  # GET /train_blocks/new
  def new
    @train_block = TrainBlock.new
  end

  # GET /train_blocks/1/edit
  def edit
  end

  # POST /train_blocks or /train_blocks.json
  def create
    @train_block = TrainBlock.new(train_block_params)

    respond_to do |format|
      if @train_block.save
        format.html { redirect_to train_block_url(@train_block), notice: "Train block was successfully created." }
        format.json { render :show, status: :created, location: @train_block }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @train_block.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /train_blocks/1 or /train_blocks/1.json
  def update
    respond_to do |format|
      if @train_block.update(train_block_params)
        format.html { redirect_to train_block_url(@train_block), notice: "Train block was successfully updated." }
        format.json { render :show, status: :ok, location: @train_block }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @train_block.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /train_blocks/1 or /train_blocks/1.json
  def destroy
    @train_block.destroy!

    respond_to do |format|
      format.html { redirect_to train_blocks_url, notice: "Train block was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_train_block
      @train_block = TrainBlock.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def train_block_params
      params.require(:train_block).permit(:train_plan_id, :title, :sequence_number)
    end
end
