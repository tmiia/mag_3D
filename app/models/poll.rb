class Poll < ApplicationRecord
    validates :lead, presence: true, length: { maximum: 300 }
    validates :label_1, presence: true
    validates :label_2, presence: true
    validates :label_3, presence: true
    
    belongs_to :debate
end
