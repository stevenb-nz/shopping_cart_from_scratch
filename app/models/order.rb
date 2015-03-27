class Order < ActiveRecord::Base
  has_many :purchases
  has_many :products, through: :purchases

  def self.current_order(current_user)
    orders = self.all
    orders.each do |order|
      if (current_user.id == order.user_id) &&
         (order.purchased == false)
        return order
      end
    end
    o = Order.new
    o.user_id = current_user.id
    o.purchased = false
    o.save
    return o
  end
end
