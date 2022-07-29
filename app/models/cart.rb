class Cart < ApplicationRecord
    has_many :cart_items
    has_many :desserts, through: :cart_items
    belongs_to :user
end