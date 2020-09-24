class IdeaBoardsController < ApplicationController
    before_action :initialize_search, only: :show

    def show
        @idea_board = IdeaBoard.find_by(params[:id])
        handle_filters
    end

    def clear
        clear_session(:filter_option)
        redirect_to idea_boards_path
    end

    private

    def idea_board_params
        model_params(:idea_board, :name, :trip_id)
    end

    def initialize_search
        params[:filter_option] = nil if params[:filter_option].blank?
        session[:filter_option] = params[:filter_option]
    end

    def handle_filters
        if session[:filter_option]
            @user = Idea.filter_by_user(session[:filter_option])
        end
    end
end