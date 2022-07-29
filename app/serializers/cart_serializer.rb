class CartSerializer < ActiveModel::Serializer
  attributes :id, :acceptance_status, :completed_status, :current_cart, :pending_status, :user_id , :show_cart_items

  # has_many :cart_items
end
