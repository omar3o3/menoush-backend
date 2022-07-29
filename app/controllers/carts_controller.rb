class CartsController < ApplicationController

    # def retrieve_cart
    #     user = User.find(params[:user_id])
    #     cart = Cart.where("user_id = ? AND current_cart = ?", user.id , true).first
    #     # if cart && user then
    #     #     cart_item = CartItem.create(cart_id: cart.id, dessert_id: dessert.id)
    #     # end
    #     render json: cart, status: :ok
    # end

        def show
        user = User.find(params[:user_id])
        cart = Cart.where("user_id = ? AND current_cart = ?", user.id , true).first
        # if cart && user then
        #     cart_item = CartItem.create(cart_id: cart.id, dessert_id: dessert.id)
        # end
        render json: cart, status: :ok
    end

end
