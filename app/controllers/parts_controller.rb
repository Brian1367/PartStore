class PartsController < ApplicationController


  def index
      @parts = Car.find(params[:id]).parts
      @order_item = current_order.order_items.new
  end


  private

    def car_params
      params.require(:car).permit(:rating, :body)
    end
  end
