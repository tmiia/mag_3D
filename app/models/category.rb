class Category < ApplicationRecord
    has_many :articles
    has_many :debates

    # def self.existing_categories
    #     pluck(:label)
    # end

end
