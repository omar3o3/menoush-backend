class CartItemsController < ApplicationController

    def add_to_cart
        # byebug
        user = User.find(params[:user_id])
        dessert = Dessert.find(params[:dessert_id])
        cart = Cart.where("user_id = ? AND current_cart = ?", user.id , true).first
        if cart && user then
            cart_item = CartItem.create(cart_id: cart.id, dessert_id: dessert.id)
        end
        render json: cart_item, status: :created
    end

end
