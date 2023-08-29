class ChoicesController < ApplicationController
    def update
        @choice = Choice.find_by(id: params[:question][:choice_id])
        @choice.add_vote if @choice 
        redirect_to questions_url 
    end 
end 