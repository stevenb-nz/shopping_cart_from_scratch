class Product < ActiveRecord::Base
  has_many :purchases
  has_many :orders, through: :purchases
end
