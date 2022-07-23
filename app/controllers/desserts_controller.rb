class DessertsController < ApplicationController

    def index
        desserts = Dessert.all
        render json: desserts, status: :ok
    end

    def create
        dessert = Dessert.create!(dessert_params) 
        @dessert.images.attach(io: params[:images],filename: 'file.pdf', content_type: 'image/pdf')
        # @dessert.images.attach(io: File.open('/path/to/file'), filename: 'file.pdf')
        render json: dessert, status: :ok
    end


    private
    
    def dessert_params
        params.permit(:english_name, :arabic_name, :dessert_type , :price, :images)
    end

end
