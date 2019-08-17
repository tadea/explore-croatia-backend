class Api::V1::BeachesController < ApplicationController
    before_action :find_beach
    def show
        beach_json = BeachSerializer.new(@beach).serialized_json
        render json: beach_json
    end

    private
    def find_beach
        @beach = Beach.find(params[:id])
    end

    def beach_params
        params.require(:beach).permit(:name, :location, :beach_type, :summary)
    end
end
