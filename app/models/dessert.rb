class Dessert < ApplicationRecord
    has_many_attached :images

    def images_url
        dessert.images
        # images
        # byebug
    end
end
