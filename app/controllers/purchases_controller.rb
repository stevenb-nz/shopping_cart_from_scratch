class PurchasesController < ApplicationController
  def index
    redirect_to new_user_session_path unless user_signed_in?
    @current_order = Order.current_order(current_user)
    @purchases = Purchase.filter_purchases(@current_order.id)
  end

  def new
    redirect_to new_user_session_path unless user_signed_in?
    current_order = Order.current_order(current_user)
    p = Purchase.new
    p.product_id = params[:id]
    p.order_id = current_order.id
    p.save
    redirect_to purchases_path
  end

  def destroy
    redirect_to new_user_session_path unless user_signed_in?
    @purchase = Purchase.find(params[:id])
    @purchase.destroy
    redirect_to purchases_path
  end
end
