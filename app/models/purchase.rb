class Purchase < ActiveRecord::Base
  belongs_to :product
  belongs_to :order

  def self.filter_purchases(current_order)
    filtered = []
    self.all.each do |purchase|
      if purchase.order_id == current_order
        filtered << purchase
      end
    end
    filtered
  end
end
