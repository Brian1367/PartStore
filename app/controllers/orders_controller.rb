class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    render json: Order.find(params[:id])
  end

  def new
    @order = Order.new
    @WD_collection = Order::WD

  end

  def create
    @order = Order.new(order_params)
    if @wing_order.save
      flash[:notice] = "order created!"
      redirect_to orders_path
    else
      flash[:alert] = "order not created"

      render :new
    end
  end

#   def edit
#     @wing_order = WingOrder.find(params[:id])
#     @state_collection = WingOrder::STATES
#     @quantity_collection = WingOrder::QUANTITIES
#     @flavor_collection = Flavor.all
#   end
#
#   def update
#     @wing_order = WingOrder.find(params[:id])
#     # @wing_order.flavors = Flavor.where(id: params[:wing_order][:flavor_ids])
#
#     if @wing_order.update_attributes(wing_order_params) && @wing_order.flavors = Flavor.where(id: params[:wing_order][:flavor_ids])
#       flash[:notice] = "Wing order updated!"
#       redirect_to wing_orders_path
#     else
#       flash[:alert] = "Wing order not updated"
#       @state_collection = WingOrder::STATES
#       @quantity_collection = WingOrder::QUANTITIES
#       @flavor_collection = Flavor.all
#       render :edit
#     end
#   end
#
#   def destroy
#     @wing_order = WingOrder.find(params[:id])
#     @wing_order.destroy
#
#     redirect_to wing_orders_path
#   end
#
#   private
#
#   def wing_order_params
#     params.require(:wing_order).permit(
#       :customer_name,
#       :city,
#       :state,
#       :quantity,
#       :ranch_dressing
#     )
#   end
 end
