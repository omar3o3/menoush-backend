class CreateCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :carts do |t|
      t.integer :user_id
      t.integer :cart_item_id
      t.boolean :pending_status, default: false
      t.boolean :acceptance_status, default: false
      t.boolean :completed_status, default: false
      t.boolean :current_cart, default: true

      t.timestamps
    end
  end
end
