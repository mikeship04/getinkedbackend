class AuthController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def create
        @user = User.find_by(username: user_login_params[:username])

        if @user && @user.authenticate(user_login_params[:password])
            @token = encode_token({user_id: @user.id})
            render json: {user: UserSerializer.new(@user), jwt: @token}, status: :accepted
        else
            render json: { message: "Invalid username or password"}, status: :unauthorized
        end
    end

    def auto_login
        @token = params[:jwt]
        user = User.find(JWT.decode(@token, SECRET)[0]["user_id"])
        render json: user
    end

    private

    def user_login_params
        params.require(:user).permit(:username, :email, :password)
    end
end