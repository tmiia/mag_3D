class Commentary < ApplicationRecord
    belongs_to :user
    belongs_to :article
    belongs_to :debate

    has_many :likes

    validates :comment, presence: true
end
