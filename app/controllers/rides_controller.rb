class RidesController < ApplicationController
    def create
        @ride = Ride.new(ride_params)
        save_new_ride
    end

    def search
        current_date = Time.now.strftime("%m-%d-%Y")
        @rides = Ride.valid(current_date).where(start_city: params[:start_city], end_city: params[:end_city])
        if @rides.present?
            render json: @rides, status: :ok
        else    
            render json: {message: "No Rides found for the city pair"}
        end
        

    end

    private
        
        def ride_params
            params.require(:ride).permit(:start_city, :end_city, :start_time, :end_time, :date_of_journey, :vehicle_id)
        end

        def save_new_ride
            if @ride.save
                render json: @ride, status: :created
            else 
                render json: { 
                    error: @ride.errors.full_messages
                    }, status: :unprocessable_entity
            end
        end
end
