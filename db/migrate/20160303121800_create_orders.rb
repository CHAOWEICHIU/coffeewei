class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :cusomter_id
      t.integer :user_id

      #Status: unread, process, shipped
      t.string :status, default: "unread"
      t.integer :visibility, default: 1
      t.timestamps null: false
    end
    add_index("orders", "user_id")
  end
end
