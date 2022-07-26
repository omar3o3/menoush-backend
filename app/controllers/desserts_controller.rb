class DessertsController < ApplicationController

    def index
        desserts = Dessert.all
        render json: desserts, status: :ok
    end

    def create
        dessert = Dessert.create!(dessert_params) 
        # dessert.images.attach(params[:images])
        # @dessert.images.attach(io: File.open('/path/to/file'), filename: 'file.pdf')
        # url_for(@dessert.images)
        render json: dessert, status: :ok
    end
# each_serializer: DessertPreviewSerializer

    def add_images
        # byebug
        dessert = Dessert.find_by(english_name: params[:english_name])
        dessert.images.attach(params[:images])
        render json: dessert, status: :ok
    end

    private
    
    def dessert_params
        # params.require(:english_name, :arabic_name, :dessert_type , :price).permit(images:[])
        params.permit(:english_name, :arabic_name, :dessert_type , :price, images:[])
    end

    def new_image_params
        params.permit(:english_name, images:[])
    end

end
