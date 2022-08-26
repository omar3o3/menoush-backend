class Cart < ApplicationRecord
    has_many :cart_items
    has_many :desserts, through: :cart_items
    belongs_to :user

    def show_cart_items
        cart = Cart.where("user_id = ? AND current_cart = ?", user_id , true).first
        cart.desserts
        # [cart.desserts , cart.cart_items]
    end

    def show_pending_cart_items
        cart = Cart.where("user_id = ? AND current_cart = ?", user_id , false).first
        cart.desserts
    end

    def show_pending_cart_name
        # byebug
        # cart = Cart.where("user_id = ? AND current_cart = ?", user_id , false).first
        # first_name = cart.user.first_name
        # last_name = cart.user.last_name
        # [first_name, last_name].join(" ")

        cart = Cart.where("user_id = ? AND current_cart = ?", user_id , false).first
        if cart then
            first_name = cart.user.first_name
            last_name = cart.user.last_name
            return [first_name, last_name].join(" ")
        end
    end

    def user_email
        cart = Cart.where("user_id = ? AND current_cart = ?", user_id , false).first
        # cart.user.email
        # byebug
        if cart then
            return cart.user.email
        end

    end

    def converted_checkout_date
        # byebug
        if self.pending_status then
            self.day_checked_out.strftime("%a, %d %b %Y")
        end
        # self.day_checked_out.strftime("%a, %d %b %Y")
    end

end