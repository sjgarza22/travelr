class SessionsController < ApplicationController
    def index
        
    end

    def new
        @user = User.new
    end

    def create
        @user = User.find_by(username: params[:username])

        if @user.authenticate
            #save session
            redirect_to '/trips/show'
        else

        end
    end

    def destroy

    end
end