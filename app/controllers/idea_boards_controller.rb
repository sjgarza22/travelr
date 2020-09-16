class IdeaBoardsController < ApplicationController
    def show
        @idea_board = IdeaBoard.find_by(params[:id])
    end

    private

    def idea_board_params
        model_params(:idea_board, :name, :trip_id)
    end
end