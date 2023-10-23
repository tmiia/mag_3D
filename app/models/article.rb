class Article < ApplicationRecord
    has_many :commentaries
    has_many :article_tags
    belongs_to :category
    
    validates :title, presence: true
    validates :lead, presence: true, length: { maximum: 300 }
    validates :text_content, presence: true
    ## To delete when long_format / isDraft in no longer a checkbox
    
    validates :is_longformat, inclusion: { in: [true, false] }, allow_blank: true
    validates :is_draft, inclusion: { in: [true, false] }, allow_blank: true

    # def self.ransackable_attributes(auth_object = nil)
    #     ["created_at", "id", "is_draft", "is_longformat", "keywords", "lead", "media", "mood_value", "text_content", "thumbnail", "title", "updated_at"]
    # end
end
