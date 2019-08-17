class Api::V1::FavBeachesController < ApplicationController
    before_action :find_fav_beach

    def index
        @fav_beaches = FavBeach.all
        render json: @fav_beaches
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
