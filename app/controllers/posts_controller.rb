class PostsController < ApplicationController
    def index
    end

    def new
    end

    def create
    end

    def show
    end
    private 

    def post_params
        params.require(:post).permit(:title, :content, :likes, :blogger_name, :destination_name)
    end
end
