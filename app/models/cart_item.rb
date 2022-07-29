class CartItem < ApplicationRecord
    belongs_to :dessert
    belongs_to :cart

end
