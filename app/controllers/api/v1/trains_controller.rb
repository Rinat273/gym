class Api::V1::TrainsController < ApplicationController
  skip_before_action :verify_authenticity_token

def index
    @trains = Train.all
      if @trains
        render json: @trains, status: 200
      else
        render json: "Trains Not Found", status: 404
      end
  end

  # def show
  #     @train = Train.find(params[:id])
  #     if @train
  #       render json: @train, status: 200
  #     else
  #       render json: "Train Not Found", status: 404
  #     end
  # end

  def create
    @train = Train.new(train_params)
    if @train.save
      render json: @train, status: 201
    else
      render json: 
      { :errors => @train.errors.as_json }, status: 400
    end
  end

  # def destroy
  #   @train = Train.find(params[:id])
  #   if @train
  #     @train.destroy
  #     render json: "Train deleted"
  #   end
  # end

  private
    def train_params
      params.require(:train).permit(:train_plan_id)
    end
end