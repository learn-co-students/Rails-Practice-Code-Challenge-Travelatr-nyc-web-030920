class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts

    def posts_about_me
        self.posts.all
    end
end
