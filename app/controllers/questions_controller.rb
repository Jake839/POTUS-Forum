class QuestionsController < ApplicationController
    def index 
        @questions = Question.all.order('numerical_date DESC')
        render :index 
    end 
end 
