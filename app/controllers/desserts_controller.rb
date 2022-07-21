class DessertsController < ApplicationController

    def index
        desserts = Dessert.all
        render json: desserts, status: :ok
    end

end
