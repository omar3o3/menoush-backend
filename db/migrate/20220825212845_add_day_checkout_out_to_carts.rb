class AddDayCheckoutOutToCarts < ActiveRecord::Migration[6.1]
  def change
    add_column :carts, :day_checked_out, :datetime
  end
end
