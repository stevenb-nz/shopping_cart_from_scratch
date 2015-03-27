class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.belongs_to :user
      t.integer :total, default: 0
      t.boolean :purchased
      t.timestamps null: false
    end
  end
end
