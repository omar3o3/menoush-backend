class AddDayAcceptedToCarts < ActiveRecord::Migration[6.1]
  def change
    add_column :carts, :day_accepted, :datetime
  end
end
