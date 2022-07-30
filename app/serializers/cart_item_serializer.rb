class CartItemSerializer < ActiveModel::Serializer
  attributes :id, :dessert_id, :cart_id, :self_total, :quantity

  belongs_to :cart
  belongs_to :dessert
end
