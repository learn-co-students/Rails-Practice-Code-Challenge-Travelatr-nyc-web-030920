class Post < ApplicationRecord
    belongs_to :blogger
    belongs_to :destination

    validates :content, length: {minimum: 100}

    def num_of_likes
        self.likes
    end
    
end
