class ProverbsController < ApplicationController
  before_action :set_proverb, only: [:show, :update, :destroy]

  # GET /proverbs
  def index
    @proverbs = Proverb.all

    render json: @proverbs
  end

  # GET /proverbs/1
  def show
    render json: @proverb
  end

  # POST /proverbs
  def create
    @proverb = Proverb.new(proverb_params)

    if @proverb.save
      render json: @proverb, status: :created, location: @proverb
    else
      render json: @proverb.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /proverbs/1
  def update
    if @proverb.update(proverb_params)
      render json: @proverb
    else
      render json: @proverb.errors, status: :unprocessable_entity
    end
  end

  # DELETE /proverbs/1
  def destroy
    @proverb.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proverb
      @proverb = Proverb.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def proverb_params
      params.require(:proverb).permit(:text)
    end
end
