class OrdersController < ApplicationController
  def index
    @orderList = DeliveryOrder.all
    render json: @orderList
  end

  def show
    @currentOrder = DeliveryOrder.find(params[:id])
    render json: @currentOrder
  end
end
