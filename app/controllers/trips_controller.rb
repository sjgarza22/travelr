class TripsController < ApplicationController
    def new
        @trip = Trip.new
        @trip.trip_users.build(user_type: 'contributer')
        @trip.trip_users.build(user_type: 'contributer')
        @trip.trip_users.build(user_type: 'contributer')
    end

    def create
        @trip = Trip.new(trip_params)

        if @trip.save
            redirect_to trip_path(@trip)
        end
    end

    private

    def trip_params
        model_params(
            :trip,
            :title,
            trip_users_attributes: [
                :user_id,
                :user_type
            ]
        )
    end
end