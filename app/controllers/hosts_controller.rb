
class HostsController < ApplicationController
  # skip_before_action :authorized, only: [:create]

  def profile
    render json: { user: HostSerializer.new(current_user) }, status: :accepted
  end


  def index
    @hosts = Host.all
    render json: @hosts
  end

  def show
    @host = Host.find(params[:id])
    render json: @host
  end

  def create
    @host = Host.create(strong_params)
    if @host.valid?
      render json: { host: HostSerializer.new(@host) , jwt: @token}, status: :created
    else
      render json: { error: 'failed to create host' }, status: :not_acceptable
    end
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
    params.require(:host).permit(:id, :name, :username, :password)
  end

end
