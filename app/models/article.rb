class Article < ApplicationRecord
    validates :title, presence: true
    validates :lead, presence: true, length: { maximum: 300 }
    validates :text_content, presence: true
    ## To delete when long_format / isDraft in no longer a checkbox 
    validates :is_longformat, acceptance: true
    validates :is_draft, acceptance: true
end
