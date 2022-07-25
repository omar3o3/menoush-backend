class Dessert < ApplicationRecord
    # has_one_attached :image
    has_many_attached :images

    def images_url
        images
        imagess = []
        for image in images do
            imagess.push(image.url)
        end
        return imagess
    end
end
