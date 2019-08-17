class Api::V1::UsersController < ApplicationController
    before_action :find_user
    
    def show
        user_json = UserSerializer.new(@user).serialized_json
        render json: user_json
    end

    private
    def find_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:firstname, :lastname, :name, :password)
    end
end
