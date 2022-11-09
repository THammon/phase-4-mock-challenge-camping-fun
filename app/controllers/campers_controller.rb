class CampersController < ApplicationController

    def index
        render json: Camper.all, status: :ok
    end

    def show
        render json: find_cam, status: :ok, serializer: CamperWithActivitySerializer
    end

    def create
        render json: Camper.create!(cam_params), status: :created
    end

    private

    def cam_params
        params.permit(:name, :age)
    end

    def find_cam
        Camper.find(params[:id])
    end
end
