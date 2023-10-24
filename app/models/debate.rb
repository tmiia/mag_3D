class Debate < ApplicationRecord
    

    has_one :poll
    belongs_to :category

    validates :title, presence: true
    validates :lead, presence: true, length: { maximum: 300 }
    validates :context, presence: true 
end
