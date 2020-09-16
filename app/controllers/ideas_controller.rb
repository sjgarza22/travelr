class IdeasController < ApplicationController
    def new
        @idea = Idea.new(idea_board_id: params[:idea_board_id])
    end

    def create
        @idea = Idea.new(ideas_params)

        if @idea.save
            redirect_to idea_board_idea_path(@idea, @idea.idea_board_id)
        end
    end

    private

    def ideas_params
        model_params(:idea, :title, :about, :price, :idea_board_id)
    end
end