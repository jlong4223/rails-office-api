class SwansonsController < ApplicationController
  before_action :set_swanson, only: [:show, :update, :destroy]
  before_action :authenticate_request!, only: [:show, :index, :update, :destroy]
  
  # GET /swansons
  def index
    @swansons = Swanson.all

    render json: @swansons
  end

  # GET /swansons/1
  def show
    render json: @swanson
  end

  # POST /swansons
  def create
    @swanson = Swanson.new(swanson_params)

    if @swanson.save
      render json: @swanson, status: :created, location: @swanson
    else
      render json: @swanson.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /swansons/1
  def update
    if @swanson.update(swanson_params)
      render json: @swanson
    else
      render json: @swanson.errors, status: :unprocessable_entity
    end
  end

  # DELETE /swansons/1
  def destroy
    @swanson.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_swanson
      @swanson = Swanson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def swanson_params
      params.require(:swanson).permit(:author, :quote)
    end
end
