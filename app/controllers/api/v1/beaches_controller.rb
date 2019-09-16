class Api::V1::BeachesController < ApplicationController
    before_action :find_beach, only: [:show, :update, :destroy]

    def index
        if logged_in?
          @beaches = current_user.beaches
    
          render json: BeachSerializer.new(@beaches)
        else
          render json: {
            error: "You must be logged in to see beaches"
          }
        end
      end

    def create
        beach = Beach.new(beach_params)
        if beach.save
        render json: beach
        else
            render json: { message: beach.errors }, status: 400
        end
    end

    def show
        beach_json = BeachSerializer.new(@beach).serialized_json
        render json: beach_json
    end

    def update
        if @beach.update(beach_params)
        ender json: @beach
        else
            render json: { message: beach.errors }, status: 400
        end 
    end

    def destroy
        if @beach.destroy
        ender status: 204
        else
            render json: { message: beach.errors }, status: 400
        end
    end


    private
    def find_beach
        @beach = Beach.find_by(id: params[:id])
    end

    def beach_params
        params.require(:beach).permit(:name, :location, :beach_type, :summary)
    end
end
