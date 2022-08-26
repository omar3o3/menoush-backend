class CartsController < ApplicationController

    def show
        user = User.find(params[:user_id])
        cart = Cart.where("user_id = ? AND current_cart = ?", user.id , true).first
        render json: cart, status: :ok
    end

    def checkout_cart
        # byebug
        user = User.find(params[:user_id])
        cart = Cart.where("user_id = ? AND current_cart = ?", user.id , true).first
        cart.update(
            pending_status: true,
            current_cart: false,
            day_checked_out: DateTime.now
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
            pending_status: false,
            day_accepted: DateTime.now
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

    def get_accepted_orders
        accepted_orders = Cart.where("acceptance_status = ? AND completed_status =?", true , false)
        render json: accepted_orders, status: :ok
    end

    def complete_order
        order = Cart.find(params[:order_id])
        order.update(completed_status: true)
        # byebug
        render json: order, status: :ok
    end

    def user_history
        # byebug
        finished_orders = Cart.where("user_id = ? AND current_cart = ?", session[:user_id] , false)
        render json: finished_orders, status: :ok
    end

end
