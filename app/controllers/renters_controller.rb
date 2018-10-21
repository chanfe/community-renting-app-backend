class RentersController < ApplicationController
  def index
    @renters = Renter.all
    render json: @renters
  end

  def create
    @renter = Renter.create(strong_params.merge(default))
    render json: @renter, status: 201
  end

  def update
    @renter = Renter.find(params[:id])
    unless @renter.nil?
      @renter.update(strong_params)
      render json: @renter
    else
      render json: { error: "Renter not Found!" }, status: 404
    end
  end

  def destroy
    @renter = Renter.find(params[:id])
    unless @renter.nil?
      @renter.destroy
      render json: @renter
    else
      render json: { error: "Renter not Found!" }, status: 404
    end
  end

  private
  def strong_params
    params.require(:renter).permit(:name)
  end
end
