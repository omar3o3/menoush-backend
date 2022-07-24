class Dessert < ApplicationRecord
    # has_one_attached :image
    has_many_attached :images

    def images_url
    #     # dessert.images
    #     # images.url
    #     # dessert
        images
        # byebug
        imagess = []
        for image in images do
            imagess.push(image.url)
        end
    #     # # byebug
        return imagess
        # image.url
    end
end
