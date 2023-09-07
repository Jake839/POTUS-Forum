# == Schema Information
#
# Table name: questions
#
#  id          :bigint           not null, primary key
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Question < ApplicationRecord
    validates :description, presence: true 

    has_many :choices, 
        primary_key: :id, 
        foreign_key: :question_id, #choices table
        class_name: :Choice, 
        dependent: :destroy
end 
