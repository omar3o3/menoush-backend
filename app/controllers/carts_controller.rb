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
        pending_orders = Cart.where("current_cart = ? AND pending_status =?", false , true)
        render json: pending_orders, status: :ok
    end

    def accept_order
        order = Cart.find(params[:order_id])
        order.update(
            days_to_complete: params[:days_to_complete], 
            acceptance_status: true,
            pending_status: false
        )
        # byebug
        render json: order, status: :ok
    end

    def decline_order
        order = Cart.find(params[:order_id])
        order.update(
            pending_status: false
        )
        render json: order, status: :ok
    end

end
