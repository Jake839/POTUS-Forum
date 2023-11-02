# == Schema Information
#
# Table name: questions
#
#  id             :bigint           not null, primary key
#  description    :text             not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  date_string    :string           default(""), not null
#  numerical_date :integer          default(0), not null
#
class Question < ApplicationRecord
    validates :description, :date_string, :numerical_date, presence: true 

    has_many :choices, 
        primary_key: :id, 
        foreign_key: :question_id, #choices table
        class_name: :Choice, 
        dependent: :destroy

    def total_votes
        vote_sum = 0 
        choices.each { |choice| vote_sum += choice.votes }
        vote_sum 
    end 
end 
