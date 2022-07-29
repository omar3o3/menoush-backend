class Dessert < ApplicationRecord
    has_many_attached :images
    has_one_attached :preview_image

    has_many :cart_items
    has_many :carts, through: :cart_items


    def images_url
        images
        imagess = []
        for image in images do
            imagess.push(image.url)
        end
        return imagess
    end

    def preview_image_url
        preview_image.url
    end
end
