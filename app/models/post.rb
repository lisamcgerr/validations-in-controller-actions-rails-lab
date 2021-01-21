class Post < ActiveRecord::Base

    belongs_to :auhor

    validates :title, presence: true
    validates :content, length: { minimum: 100 }
    validates :category, inclusion: { in: %w( Fiction Non-Fiction )}
end
