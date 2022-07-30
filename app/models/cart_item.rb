class CartItem < ApplicationRecord
    belongs_to :dessert
    belongs_to :cart

    def self_total
        self.quantity * self.dessert.price
    end

end
