class OrdersController < ApplicationController
  def index
    @orderList = DeliveryOrder.all.as_json
    render json: @orderList.as_json(:except => [:order_items])
  end

  def show
    @currentOrder = DeliveryOrder.find(params[:id]).as_json
    render json: @currentOrder
  end

end
