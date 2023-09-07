class ChoicesController < ApplicationController
    def update
        @choice = Choice.find_by(id: params[:question][:choice_id])

        if @choice
            voted_questions = cookies[:voted_questions].presence || []
            voted_questions = voted_questions.split 
            unless voted_questions.include?(@choice.question.id.to_s)
                @choice.add_vote
                voted_questions << @choice.question.id
                cookies[:voted_questions] = voted_questions
            end
        end

        redirect_to questions_url
    end
end 