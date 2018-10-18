
class HostsController < ApplicationController
  def index
    @hosts = Host.all
    render json: @hosts
  end

  def create
    @host = Host.create(host_params.merge(default))
    render json: @host, status: 201
  end

  def update
    @host = Host.find(params[:id])
    unless @host.nil?
      @host.update(strong_params)
      render json: @host
    else
      render json: { error: "Host not Found!" }, status: 404
    end
  end

  def destroy
    @host = Host.find(params[:id])
    unless @host.nil?
      @host.destroy
      render json: @host
    else
      render json: { error: "Host not Found!" }, status: 404
    end
  end

  private
  def strong_params
    params.require(:host).permit(:name)
  end

end
