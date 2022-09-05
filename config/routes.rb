Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"
  get "/me", to: "users#show"
  delete "/logout", to: "sessions#destroy"

  # get "/desserts", to: "desserts#index"
  get "https://menoushbackend.netlify.app/desserts", to: "desserts#index"
  post "/create-dessert", to: "desserts#create"
  post "/add-images", to: "desserts#add_images"
  post "/add-preview-image", to: "desserts#add_preview_image"
  patch "/edit-dessert", to: "desserts#update"
  delete "/delete-dessert", to: "desserts#destroy"

  post "/add-to-cart", to: "cart_items#add_to_cart"
  delete "/remove-from-cart", to: "cart_items#destroy"
  patch "/update-item-quantity", to: "cart_items#update"

  get "/retrieve-cart/:user_id", to: "carts#show"
  patch "/checkout-cart", to: "carts#checkout_cart"
  get "/order-history", to: "carts#user_history"

  get "/get-pending-orders", to: "carts#get_pending_orders"
  patch "/accept-order", to: "carts#accept_order"
  patch "/decline-order", to: "carts#decline_order"
  get "/get-accepted-orders", to: "carts#get_accepted_orders"
  patch "/complete-order", to: "carts#complete_order"

end
