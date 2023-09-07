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
#
class Choice < ApplicationRecord 
    validates :name, :question_id, :votes, presence: true 
    validates :name, uniqueness: { scope: :question_id, message: "Combination of Name and Question_ID must be unique."}

    def add_vote 
        self.votes += 1 
        self.save
    end 

    belongs_to :question, 
        primary_key: :id, 
        foreign_key: :question_id, #choices table
        class_name: :Question
end 
