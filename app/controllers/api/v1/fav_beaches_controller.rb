class Api::V1::FavBeachesController < ApplicationController
    before_action :find_fav_beach

    def index
        if logged_in?
            @fav_beaches = current_user.fav_beaches
            render json: @fav_beaches
        else
            render json: {
                error "You must be logged in to see your Favorite Beaches"
            }
        end

    end

    def show
        fav_beach_json = FavBeachSerializer.new(@fav_beach).serialized_json
        render json:fav_beach_json
    end

    private
    def find_fav_beach
        @fav_beach = FavBeach.find(params[:id])
    end

    def fav_beach_params
        params.require(:fav_beach).permit(:user_id, :beach_id)
    end
end
