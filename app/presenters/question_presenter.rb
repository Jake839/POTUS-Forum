class QuestionPresenter 
    def initialize(question)
        @question = question
    end 

    def question_date
        @question.date_string
    end 

    def question_description
        @question.description
    end 

    def choices_for_question_prompt
        @question.choices.order('id ASC')
    end 

    def choices_by_vote_count
        @question.choices.order('votes DESC')
    end 

    def choice_colors 
        choices_by_vote_count.map(&:color)
    end 

    def chart_data 
        choices_by_vote_count.map { |choice| [choice.name, choice.vote_percentage(@question.total_votes).to_f] }
    end  

    def choice_votes 
        choices_by_vote_count.map { |choice| [choice.name, choice.votes, choice.color] }
    end 

    def total_votes
        @question.total_votes
    end 
end 