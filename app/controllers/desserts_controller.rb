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

    def add_images
        # params.permit(:english_name, images:[])
        dessert = Dessert.find_by(english_name: params[:english_name])
        dessert.images.attach(params[:images])
        render json: dessert, status: :ok
    end

    def add_preview_image
        # dessert = Dessert.find_by(english_name: params[:english_name])
        
        dessert = Dessert.find(params[:id])
        # puts dessert[:english_name]
        
        if dessert.preview_image.attached? then
            dessert.preview_image.purge
        end
        dessert.preview_image.attach(params[:preview_image])
        render json: dessert, status: :ok
    end

    private
    
    def dessert_params
        # params.require(:english_name, :arabic_name, :dessert_type , :price).permit(images:[])
        params.permit(:english_name, :arabic_name, :dessert_type , :price, images:[])
    end

    # def new_image_params
    #     params.permit(:english_name, images:[])
    # end

end
