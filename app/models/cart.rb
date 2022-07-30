class Cart < ApplicationRecord
    has_many :cart_items
    has_many :desserts, through: :cart_items
    belongs_to :user

    def show_cart_items
        # byebug
        cart = Cart.where("user_id = ? AND current_cart = ?", user_id , true).first
        # cart.cart_items
        cart.desserts
        # [cart.desserts , cart.cart_items]
    end

end