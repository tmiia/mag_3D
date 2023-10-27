class Poll < ApplicationRecord
    validates :lead, presence: true, length: { maximum: 300 }
    validates :label_1, presence: true
    validates :label_2, presence: true
    validates :label_3, presence: true
    
    belongs_to :debate
    has_many :votes

    def total_votes
      count_1 + count_2 + count_3
    end

    def result_1
        (count_1 * 100) / self.total_votes
    end
    def result_2
        (count_2 * 100) / self.total_votes
    end
    def result_3
        (count_3 * 100) / self.total_votes
    end
end
