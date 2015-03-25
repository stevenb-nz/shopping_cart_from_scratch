class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.belongs_to :product, index: true
      t.belongs_to :order, index: true
      t.integer :total, default: 0
      t.timestamps null: false
    end
  end
end
