class QuestionsController < ApplicationController
    def index 
        @questions = Question.all.includes(:choices).order('numerical_date DESC')
        render :index 
    end 
end 
