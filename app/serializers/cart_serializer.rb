class CartSerializer < ActiveModel::Serializer
  attributes :id,
  :acceptance_status,
  :completed_status,
  :current_cart,
  :pending_status,
  :user_id,
  :show_pending_cart_name,
  :days_to_complete,
  :user_email,
  :day_checked_out,
  :day_accepted
  # , :show_pending_cart_items
  # :show_cart_items,
  # day_checked_out day_accepted

  has_many :cart_items
  has_many :desserts
end
