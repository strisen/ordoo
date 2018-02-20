class OrdersController < ApplicationController

  def index
    @orders = DeliveryOrder.all.as_json
    @orderList = {
      orders: @orders.as_json(:except => [:order_items])
    }
    render json: @orderList
  end

  def show
    @currentOrder = {
      order: DeliveryOrder.find_by(order_id: params[:id].upcase).as_json
    }
    render json: @currentOrder
  end
end
