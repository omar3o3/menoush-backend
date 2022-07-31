class AddDaysToCompleteToCart < ActiveRecord::Migration[6.1]
  def change
    add_column :carts, :days_to_complete, :integer
  end
end
