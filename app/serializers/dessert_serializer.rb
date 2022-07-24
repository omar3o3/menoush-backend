class DessertSerializer < ActiveModel::Serializer
  attributes :id , :arabic_name , :dessert_type , :english_name , :price, :images_url

  # has_many_attached: :images
end
