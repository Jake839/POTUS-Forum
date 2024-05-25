class ChoicesController < ApplicationController
    skip_before_action :verify_authenticity_token
    
    def update
        @choice = Choice.find_by(id: params[:question][:choice_id])

        if @choice
            session_token = session[:user_token] ||= SecureRandom.hex(16)
            voted_questions = session[session_token] ||= []
            unless voted_questions.include?(@choice.question.id)
                @choice.add_vote
                voted_questions << @choice.question.id
                session[session_token] = voted_questions
                session[:voted_question_id] = @choice.question.id #log the question the user votes for
                session[:scroll_to_voted_question] = true # Set the flag to scroll
            end
        end

        redirect_to questions_url
    end
end 
