class TripsController < ApplicationController
    def new
        @trip = Trip.new
        @trip.trip_users.build(user_type: 'contributer')
        @trip.trip_users.build(user_type: 'contributer')
        @trip.trip_users.build(user_type: 'contributer')
    end

    def create

    end
end