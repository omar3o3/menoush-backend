class UsersController < ApplicationController
    
    def create
        user = User.create!(user_params)
        if user.valid?
            render json: user, status: 201
        else
            render json: {error: "Invalid user"}, status: 422
        end
    end

    def show
        current_user = User.find(session[:current_user])
        render json: current_user
    end



    private
    def user_params
        params.permit(:username, :password, :password_confirmation, :first_name, :last_name, :email, :admin)
    end

end
