class Commentary < ApplicationRecord
    belongs_to :user
    belongs_to :debate
    belongs_to :article

    has_many :likes
end
