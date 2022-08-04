class CartItemsController < ApplicationController

    def add_to_cart
        # byebug
        user = User.find(params[:user_id])
        dessert = Dessert.find(params[:dessert_id])
        cart = Cart.where("user_id = ? AND current_cart = ?", user.id , true).first
        # byebug
        if cart && user then

            if cart.desserts.include?(dessert) then
                cart_item = cart.cart_items.find_by(dessert_id: dessert.id)
                cart_item.quantity += 1
                cart_item.save
                # byebug
            else
                cart_item = CartItem.create(cart_id: cart.id, dessert_id: dessert.id)
            end
        end
        render json: cart_item, status: :ok
    end

    def destroy
        cart_item = CartItem.find(params[:cart_item_id])
        cart_item.destroy
        # byebug
    end

    def update
        cart_item = CartItem.find(params[:cart_item_id])
        cart_item.update(quantity: params[:quantity])
        # byebug
        render json: [cart_item , cart_item.self_total], status: :ok
    end

end
