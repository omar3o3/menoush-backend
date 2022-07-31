class CartSerializer < ActiveModel::Serializer
  attributes :id, :acceptance_status, :completed_status, :current_cart, :pending_status, :user_id, :show_cart_items, :show_pending_cart_name
  # , :show_pending_cart_items

  has_many :cart_items
  has_many :desserts
end
