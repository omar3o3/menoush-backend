Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"
  get "/me", to: "users#show"
  delete "/logout", to: "sessions#destroy"

  get "/desserts", to: "desserts#index"
  post "/create-dessert", to: "desserts#create"
  post "/add-images", to: "desserts#add_images"
  post "/add-preview-image", to: "desserts#add_preview_image"
  patch "/edit-dessert", to: "desserts#update"

  post "/add-to-cart", to: "cart_items#add_to_cart"
  delete "/remove-from-cart", to: "cart_items#destroy"

  get "/retrieve-cart/:user_id", to: "carts#show"
  patch "/checkout-cart", to: "carts#checkout_cart"
  get "/get-pending-orders", to: "carts#get_pending_orders"

end
