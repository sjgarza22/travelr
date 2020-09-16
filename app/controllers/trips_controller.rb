class TripsController < ApplicationController

    def index
        @trips = current_user.trips
    end
    
    def new
        @trip = Trip.new
        @trip.trip_users.build(user_type: 'contributer')
        @trip.trip_users.build(user_type: 'contributer')
        @trip.trip_users.build(user_type: 'contributer')
        @trip.build_idea_board(name: 'Idea Board')
    end

    def create
        @trip = Trip.new(trip_params)

        if @trip.save
            @trip.trip_users.build(user_id: current_user, trip_id: @trip.id, user_type: 'administrator')
            redirect_to trip_path(@trip)
        end
    end

    def show
        @trip = Trip.find_by_id(params[:id])
    end

    private

    def trip_params
        model_params(
            :trip,
            :title,
            trip_users_attributes: [
                :user_id,
                :user_type
            ],
            idea_board_attributes: [
                :name
            ]
        )
    end
end