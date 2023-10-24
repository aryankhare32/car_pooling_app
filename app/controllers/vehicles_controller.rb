class VehiclesController < ApplicationController
    def create
        @vehicle = Vehicle.new(vehicle_params)

        if @vehicle.save
            render json: @vehicle, status: :created
        else 
            render json: { 
                error: @vehicle.errors.full_messages
                }, status: :unprocessable_entity
        end
    end

    private
        def vehicle_params
            params.require(:vehicle).permit(:license_number, :model, :seats, :vehicle_number, :user_id)
        end
end
