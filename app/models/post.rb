class Post < ApplicationRecord
    belongs_to :blogger
    belongs_to :destination

    def num_of_likes
        self.likes
    end
    
end
