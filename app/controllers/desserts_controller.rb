class DessertsController < ApplicationController

    def index
        desserts = Dessert.all
        render json: desserts, status: :ok
    end

    def create
        dessert = Dessert.create!(dessert_params) 
        render json: dessert, status: :ok
        render json: "hello", status: :ok
    end

# dessert.images.attach(params[:images])
# @dessert.images.attach(io: File.open('/path/to/file'), filename: 'file.pdf')
# url_for(@dessert.images)

    def update
        # byebug
        dessert = Dessert.find(params[:id])

        if params.has_key?(:english_name) then
            dessert.update(english_name: params[:english_name])
        end

        if params.has_key?(:arabic_name) then
            dessert.update(arabic_name: params[:arabic_name])
        end

        if params.has_key?(:price) then
            dessert.update(price: params[:price])
        end

        render json: dessert, status: :ok
    end

    def add_images
        dessert = Dessert.find(params[:id])
        dessert.images.attach(params[:images])
        render json: dessert, status: :ok
    end

    def add_preview_image
        dessert = Dessert.find(params[:id])
        if dessert.preview_image.attached? then
            dessert.preview_image.purge
        end
        dessert.preview_image.attach(params[:preview_image])
        render json: dessert, status: :ok
    end

    def destroy
        deleted_dessert = Dessert.find(params[:dessert_id])
        deleted_dessert.destroy
        # byebug
    end

    private
    
    def dessert_params
        # params.require(:english_name, :arabic_name, :dessert_type , :price).permit(images:[])
        params.permit(:english_name, :arabic_name, :dessert_type , :price, images:[])
    end

end
