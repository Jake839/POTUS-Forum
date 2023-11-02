class QuestionPresenter 
    def initialize(question)
        @question = question
    end 

    def choices 
        @question.choices.order('votes DESC')
    end 

    def choice_colors 
        choices.map(&:bar_color)
    end 

    def chart_data 
        choices.map { |choice| [choice.name, choice.vote_percentage(@question.total_votes).to_f] }
    end  

    def choice_votes 
        choices.map { |choice| [choice.name, choice.votes, choice.bar_color] }
    end 

    def total_votes
        @question.total_votes
    end 
end 