class ItemsController < ApplicationController
  def index
    @items = Item.all
    render json: @items
  end

  def create
    @item = Item.create(strong_params)
    render json: @item, status: 201
  end

  def update
    @item = Item.find(params[:id])

    unless @item.nil?
      @item.update(strong_params)
      render json: @item
    else
      render json: { error: "Item not Found!" }, status: 404
    end
  end

  def updatenull
    @item = Item.find(params[:id])

    unless @item.nil?
      @item.update(renter_id:nil)
      render json: @item
    else
      render json: { error: "Item not Found!" }, status: 404
    end
  end

  def destroy
    @item = Item.find(params[:id])
    unless @item.nil?
      @item.destroy
      render json: @item
    else
      render json: { error: "Item not Found!" }, status: 404
    end
  end

  private
  def strong_params
    params.require(:item).permit(:id, :name, :host_id, :renter_id, :cost, :discription, :image_url)
  end
end
