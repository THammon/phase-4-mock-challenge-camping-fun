class ActivitiesController < ApplicationController

    def index
        render json: Activity.all, status: :ok
    end

    def destroy
        find_act.destroy
        head :no_content
    end

    private

    def find_act
        Activity.find(params[:id])
    end
end
