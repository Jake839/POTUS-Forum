# == Schema Information
#
# Table name: choices
#
#  id          :bigint           not null, primary key
#  name        :string           not null
#  question_id :integer          not null
#  votes       :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  bar_color   :string           not null

class Choice < ApplicationRecord 
    validates :name, :question_id, :votes, presence: true 
    validates :name, uniqueness: { scope: :question_id, message: "Combination of Name and Question_ID must be unique."}

    belongs_to :question, 
        primary_key: :id, 
        foreign_key: :question_id, #choices table
        class_name: :Question

    def add_vote 
        self.votes += 1 
        self.save!
    end 

    def vote_percentage_format(vote_percentage)
        "#{vote_percentage}%"
    end 

    def vote_percentage(total_votes)
        return "0%" if votes == 0 
        vote_percentage = (votes.to_f / total_votes.to_f * 100).round(2) 
        
        if vote_percentage.floor != 0 
            return vote_percentage_format(vote_percentage.to_i) if vote_percentage % vote_percentage.floor == 0       
        end 

        vote_percentage_format(vote_percentage) 
    end 
end 
