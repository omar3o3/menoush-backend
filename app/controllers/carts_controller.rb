class CartsController < ApplicationController

    def show
        user = User.find(params[:user_id])
        cart = Cart.where("user_id = ? AND current_cart = ?", user.id , true).first
        render json: cart, status: :ok
    end

    def checkout_cart
        user = User.find(params[:user_id])
        cart = Cart.where("user_id = ? AND current_cart = ?", user.id , true).first
        cart.update(
            pending_status: true,
            current_cart: false
        )
        new_cart = Cart.create!(user_id: user.id)
        render json: new_cart, status: :ok
    end

    def get_pending_orders
        pending_orders = Cart.where("current_cart = ?", false)
        render json: pending_orders, status: :ok
    end

end
