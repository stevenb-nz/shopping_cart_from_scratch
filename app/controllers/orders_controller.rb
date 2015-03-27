class OrdersController < ApplicationController
  def update
    redirect_to new_user_session_path unless user_signed_in?
    @order = Order.find(params[:id])
    if @order.total > 0
      @order.purchased = true
      @order.save
      @last_order = @order.total
    end
    redirect_to purchases_path
  end
end
