class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :order_number
      t.integer :quantity
      t.references :user, index: true
      t.float :price

      t.timestamps
    end
  end
end
