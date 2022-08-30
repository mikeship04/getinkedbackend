class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def create
        user = User.create(user_params)

        if user.valid?
            render json: {:user: user, status: created}
        else
            render json: {error: "Failed to create user", status: not_created}
        end
    end
    

    private

    def user_params
        params.require(:user).permit(:username, :name, :password)
    end
end
