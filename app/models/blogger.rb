class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts
    validates :name, uniqueness: true
    validates :bio, length: {minimum: 30}
    validates :age, numericality: {greater_than: 0}

    def total_likes
        likes = 0
        self.posts.each do |p|
          likes +=  p.likes 
        end
        likes
    end

    def featured_post
        max_count = 0
        post = nil 
        self.posts.each do |p|
            if p.likes > max_count
                max_count = p.likes
                post = p
            end
        end
        post
    end
    
end
