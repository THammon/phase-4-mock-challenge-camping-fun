class SignupsController < ApplicationController

    def create
        render json: Signup.create!(su_params).activity, status: :created
    end

    private

    def su_params
        params.permit(:time, :camper_id, :activity_id)
    end
end
