class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create, :index, :show, :update]

    def create
        user = User.create(user_params)

        if user.valid?
            render json: {user: UserSerializer.new(user)}, status: :created
        else
            render json: {error: "Failed to create user"}, status: :not_acceptable
        end
    end

    def index
        render json: User.all
    end

    def show
        render json: {user: UserSerializer.new(@user)}
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end
end
