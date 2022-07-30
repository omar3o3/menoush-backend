class CartsController < ApplicationController

    def show
        user = User.find(params[:user_id])
        cart = Cart.where("user_id = ? AND current_cart = ?", user.id , true).first
        render json: cart, status: :ok
    end

end
