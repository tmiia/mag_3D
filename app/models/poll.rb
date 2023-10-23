class Poll < ApplicationRecord
    validates :lead, presence: true, length: { maximum: 300 }

    belongs_to :debate
end
