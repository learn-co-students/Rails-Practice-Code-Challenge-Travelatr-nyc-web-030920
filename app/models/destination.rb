class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts

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

    def avg_age
        age = 0
        count = 0
        self.bloggers.each do |b| 
            age += b.age
            count+=1
        end
        age/count
    end

end
