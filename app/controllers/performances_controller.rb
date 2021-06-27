class PerformancesController < ApplicationController
  #must be logged in to visit routes
  before_action :authorized 
  before_action :set_performance, only: [:show]

  # GET /performances
  def index
    @performances = Performance.all

    render json: @performances
  end

  # GET /performances/1
  def show
    render json: @performance.to_json(include: [:reviews, :users])
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_performance
      @performance = Performance.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def performance_params
      params.require(:performance).permit(:title, :summary, :img, :price)
    end
end
