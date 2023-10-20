class Debate < ApplicationRecord
    validates :title, presence: true
    validates :lead, presence: true, length: { maximum: 300 }
    validates :context, presence: true 
end
